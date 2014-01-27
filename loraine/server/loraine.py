import time
import yaml
import struct
import serial
import socket
import argparse


def get_args():
    parser = argparse.ArgumentParser(
        formatter_class=argparse.ArgumentDefaultsHelpFormatter)
    parser.add_argument('-d', '--driver', type=str,
                        help="Serial port for driver",
                        dest='driver', default="/dev/ttyACM0")
    parser.add_argument('-c', '--config', type=argparse.FileType('rb'),
                        dest='config', help="Configuration file",
                        default="loraine.yaml")
    parser.add_argument('-a', '--addr', type=str, help="IP to listen on",
                        dest='addr', default="0.0.0.0")
    parser.add_argument('-p', '--port', type=int, help="UDP port to listen on",
                        dest='port', default=7878)
    return parser.parse_args()


def get_config(args):
    print("Parsing config '{}'".format(args.config.name))
    return yaml.load(args.config)


def get_serial(args):
    print("Opening serial port {}".format(args.driver))
    return serial.Serial(args.driver)


def get_socket(args):
    print("Opening UDP socket on {}:{}".format(args.addr, args.port))
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((args.addr, args.port))
    return sock


def setup():
    args = get_args()
    conf = get_config(args)
    ser = get_serial(args)
    sock = get_socket(args)
    return conf, ser, sock


def read_lines(sock):
    data, _ = sock.recvfrom(1024)
    data = data.decode()
    return data.splitlines()


def lines_to_commands(lines):
    commands = []
    for line in lines:
        name, value = line.split("=")
        module, light = name.split(".")
        commands.append((module, light, value))
    return commands


def get_commands(sock):
    return lines_to_commands(read_lines(sock))


def get_light_conf(command, conf):
    try:
        return conf["lights"][command[0]][command[1]]
    except KeyError:
        return None


def set_gray(command, light_conf, ser):
    addr = light_conf["gray"]
    value = int(command[2])
    if not 0 <= value <= 255:
        return
    ser.write(struct.pack("<BBBB", 0x02, addr, value, 0x03))


def set_rgb(command, light_conf, ser):
    addr_r = light_conf["red"]
    addr_g = light_conf["green"]
    addr_b = light_conf["blue"]
    vals = command[2].split(",")
    val_r = int(vals[0])
    val_g = int(vals[1])
    val_b = int(vals[2])
    if not (0 <= val_r <= 255 and
            0 <= val_g <= 255 and
            0 <= val_b <= 255):
        return
    ser.write(struct.pack(
        "<BBBBBBBBBBBB",
        0x02, addr_r, val_r, 0x03,
        0x02, addr_g, val_g, 0x03,
        0x02, addr_b, val_b, 0x03))


def set_light(command, conf, ser):
    cfg = get_light_conf(command, conf)
    if cfg:
        if "gray" in cfg:
            set_gray(command, cfg, ser)
        elif "red" in cfg and "green" in cfg and "blue" in cfg:
            set_rgb(command, cfg, ser)


while True:
    ser, sock = None, None
    try:
        conf, ser, sock = setup()
        while True:
            for command in get_commands(sock):
                set_light(command, conf, ser)
    except Exception as e:
        print("Exception:", e)
    finally:
        if sock:
            sock.close()
        if ser:
            ser.close()
    time.sleep(1)
