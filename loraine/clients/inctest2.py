import time
import socket
import math
import numpy as np
import matplotlib.pyplot as plt

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
           (90 , 12 , 0  ),
           (80 , 5  , 0  ),
           (60 , 4  , 0  ),
           (40 , 2  , 0  ),
           (20 , 1  , 0  ),
           (15 , 1  , 0  ),
           (0  , 0  , 0  )
           ]

cols = np.array(colours)
reds = cols[:,0]
greens = cols[:,1]
blues = cols[:,2]

x = np.array(range(0, reds.size))
redfit = 255 - 255*(x/15)
greenfit = np.array(x)
greenfit = 4000 * np.exp(-x/1.7)
greenfit[0:10] = 135 * np.exp(-x[0:10]/5)
bluefit = 80 * np.exp(-x/2.5)

for i in range(0, redfit.size):
    print(str(reds[i])+"\t"+str(greens[i])+"\t"+str(blues[i])+"\t"+str(int(redfit[i]))+"\t"+str(int(greenfit[i]))+"\t"+str(int(bluefit[i])))

plt.plot(x,(reds), "r*")
plt.plot(x,(redfit), "r")
plt.plot((greens),"g*")
plt.plot((greenfit),"g")
plt.plot((blues),"b*")
plt.plot((bluefit),"b")
plt.plot(np.zeros(reds.shape), "black")
plt.yscale('log')
plt.show()

#for colour in colours:
#    set_shelves(colour)
#    time.sleep(0.05)

for val in range(0,20):
    red = 255-255*val/15
    green = 135*np.exp(-val/5) if val <= 10 else 4000*np.exp(-val/1.7)
    blue = 80*np.exp(-val/3)
    
    red, green, blue = int(red), int(green), int(blue)
    red = red if 0<=red<=255 else (255 if red>255 else 0)
    green = green if 0<=green<=255 else (255 if green>255 else 0)
    blue = blue if 0<=blue<=255 else (255 if blue>255 else 0)

#    set_shelves((red, green, blue))
    print(red, green, blue)
    time.sleep(0.5)
