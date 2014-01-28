import time
import random
import socket
import colorsys

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:
    for channel in ("one", "two", "three", "four", "five", "six"):
        h = random.random()
        r, g, b = [int(x*255) for x in colorsys.hsv_to_rgb(h, 1.0, 1.0)]
        msg = "bookshelf.{channel}={r},{g},{b}".format(**locals())
        sock.sendto(msg.encode(), ("192.168.2.5", 7878))
    time.sleep(0.3)
