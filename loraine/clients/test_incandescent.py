import time
import math
import loraine
import numpy as np
from scipy.interpolate import interp1d

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

inc_colours = np.array(((255, 130, 80 ),
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
                        (0  , 0  , 0  )))
x = np.linspace(0, 1, inc_colours[:,0].size)
inc_red = interp1d(x, inc_colours[:,0], kind="linear")
inc_green = interp1d(x, inc_colours[:,1], kind="linear")
inc_blue = interp1d(x, inc_colours[:,2], kind="linear")


def set_shelves(colours):
    loraine.set_rgb(zip(shelves,
                        [tuple(int(x) for x in colours)] * len(shelves)))


def inc_to_rgb(state):
    state = 1 - state
    rgb = (inc_red(state), inc_green(state), inc_blue(state))
    rgb = (int(x) for x in rgb)
    return rgb


state = 0.0
while True:
    beat = math.floor(time.time())
    beat_progress = time.time() % 1

    if beat_progress < 0.2:
        state += 0.1
    else:
        state -= 0.05
    state = state if 0.0 <= state <= 1.0 else (1.0 if state >= 1.0 else 0.0)

    rgb = inc_to_rgb(state)
#    print(str(state)+"\t"+str(rgb[0])+"\t"+str(rgb[1])+"\t"+str(rgb[2]))
    set_shelves(rgb)
    time.sleep(0.02)
