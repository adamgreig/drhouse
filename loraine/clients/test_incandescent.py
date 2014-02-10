import time
import socket
import math

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
ORACLE_IP = "192.168.2.5"
ORACLE_PORT = 7878

shelves = ("one", "two", "three", "four", "five", "six")


def set_shelf(shelf, colour):
    msg = "bookshelf.{0}={1},{2},{3}".format(shelf, colour[0], colour[1],
                                             colour[2])
    sock.sendto(msg.encode(), (ORACLE_IP, ORACLE_PORT))


def set_shelves(colours):
    for i in range(len(shelves)):
        set_shelf(shelves[i], tuple(int(x) for x in colours))


def temp_to_rgb(temperature):
    # Borrowed from http://tinyurl.com/temp2rgb
    # Scale and bound the temperature:
    temp = temperature // 100
#    temp = temp if 10 <= temp <= 400 else (400 if temp > 400 else 10)
    temp = temp if temp >= 1 else 1

    rgb = [0, 0, 0]

    if temp <= 66:
        rgb[0] = 255
        rgb[1] = 99.4708025861 * math.log(temp) - 161.1195681661
        if temp <= 19:
            rgb[2] = 0
        else:
            rgb[2] = 138.5177312231 * math.log(temp - 10) - 305.0447927307
    else:
        rgb[0] = 329.698727446 * (temp - 60) ** -0.1332047592
        rgb[1] = 288.1221695283 * (temp - 60) ** -0.0755148492
        rgb[2] = 255

    rgb = [v if 0 <= v <= 255 else (255 if v > 255 else 0) for v in rgb]

    # Fiddle factors:
#    if temperature < 2000:
#        rgb[0] *= (temperature/2000.0)**2.4
#    rgb[1] = (rgb[1]/255.0)**1.5 * 255

    return tuple(rgb)


temperature = 0
while True:
    beat = math.floor(time.time())
    beat_progress = time.time() % 1

    if beat_progress < 0.1:
        temperature += 700
    else:
        temperature /= 1.1
    temperature = temperature if 1 <= temperature <= 40000 else (
        40000 if temperature > 40000 else 1)

    rgb = temp_to_rgb(temperature)
    rgb = [int(x) for x in rgb]
    print(str(temperature)+"\t"+str(rgb[0])+"\t"+str(rgb[1])+"\t"+str(rgb[2]))
    set_shelves(rgb)
    time.sleep(0.02)
