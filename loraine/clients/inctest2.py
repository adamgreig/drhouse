import time
import math
import numpy as np
import matplotlib.pyplot as plt
import loraine
from scipy.interpolate import interp1d

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]


def set_shelves(colours):
    loraine.set_rgb(zip(shelves,
                        [tuple(int(x) for x in colours*255)] * len(shelves)))


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
           (60 , 4  , 0  ),
           (20 , 1  , 0  ),
           (0  , 0  , 0  )
           ]

cols = np.array(colours)
reds = cols[:,0]
greens = cols[:,1]
blues = cols[:,2]

x = np.linspace(0, 1, reds.size)
redfit = interp1d(x, reds, kind="linear")
greenfit = interp1d(x, greens, kind="linear")
bluefit = interp1d(x, blues, kind="linear")

x = np.linspace(0, 1, 100)
plt.plot(reds, "r*")
plt.plot(x*(len(reds)-1),redfit(x), "r")
plt.plot(greens,"g*")
plt.plot(x*(len(greens)-1), greenfit(x),"g")
plt.plot(blues,"b*")
plt.plot(x*(len(blues)-1), bluefit(x),"b")

plt.yscale('log')
plt.show()

x = np.linspace(0, 1, 50)
timer=time.time()
for i in x:
    set_shelves((redfit(i), greenfit(i), bluefit(i)))
    time.sleep(0.02)
print("took "+str(time.time()-timer)+" secs for "+str(len(x))+" its")
