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

state = 0.0
colours = [(255, 130, 80 ),
           (245, 110, 55 ),
           (220, 85 , 30 ),
           (200, 70 , 20 ),
           (182, 60 , 18 ),
           (170, 50 , 15 ),
           (160, 40 , 10 ),
           (150, 35 , 7  ),
           (140, 30 , 5  ),
           (120, 20 , 2  ),
           # (0, 0, 0),
           (90 , 12 , 0  ),
           (80 , 5  , 0  ),
           (60 , 4  , 0  ),
           (40 , 2  , 0  ),
           (20 , 1  , 0  ),
           (15 , 1  , 0  ),
           (0  , 0  , 0  )
           ]

for colour in colours:
    set_shelves(colour)
    time.sleep(0.05)
