ip = "192.168.2.5"
port = 7878
url = "http://{0}/loraine.yaml".format(ip)

import yaml
import socket
import requests
from array import array

addresses = {}
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)


def fetch(url):
    global addresses
    r = requests.get(url)
    config = yaml.load(r.text)["lights"]
    for module in config:
        for light in config[module]:
            addresses[module + "." + light] = config[module][light]


def set_rgb(commands):
    """commands = [("bookshelf.one", (255, 0, 255)),
                   ("bookshelf.two", (0, 255, 255)), ..., ]
    """
    arr = array('B')
    for command in commands:
        addrs = addresses[command[0]]
        r, g, b = addrs['red'], addrs['green'], addrs['blue']
        arr.extend((r, command[1][0], g, command[1][1], b, command[1][2]))
    sock.sendto(arr.tobytes(), (ip, port))

def set_grey(commands):
    """commands = [("fairylights.back", 255),
                   ("fairylights.middle", 255), ..., ]
    """
    arr = array('B')
    for command in commands:
        addrs = addresses[command[0]]
        grey = addrs['grey']
        arr.extend((grey, command[1]))
    sock.sendto(arr.tobytes(), (ip, port))


fetch(url)
