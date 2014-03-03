import time
import math
import loraine
import numpy as np
from scipy.interpolate import interp1d
import sys

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

if len(sys.argv) != 2:
    aim = 200
else:
    aim = int(sys.argv[1])
    # Max value is 200 to avoid tripping the current limit.
    aim = aim if 0 <= aim <= 200 else (0 if aim < 0 else 200)

for state in range(0, aim+1):
   set_shelves(inc_to_rgb(state/200.0))
   time.sleep(0.02)
