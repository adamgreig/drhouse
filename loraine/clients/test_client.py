import time
import random
import socket
import colorsys

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:
    h1, h2 = random.random(), random.random()
    r1, g1, b1 = [int(x*255) for x in colorsys.hsv_to_rgb(h1, 1.0, 1.0)]
    r2, g2, b2 = [int(x*255) for x in colorsys.hsv_to_rgb(h2, 1.0, 1.0)]
    msg = "bookshelf.one={r1},{g1},{b1}\nbookshelf.two={r2},{g2},{b2}".format(
        **locals())
    sock.sendto(msg.encode(), ("192.168.2.5", 7878))
    time.sleep(0.3)
