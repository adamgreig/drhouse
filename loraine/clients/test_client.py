import time
import random
import colorsys
import loraine

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

colours = [(0, 0, 0)] * 6

while True:
    for i, shelf in enumerate(shelves):
        h = random.random()
        colours[i] = [int(x * 255) for x in colorsys.hsv_to_rgb(h, 1.0, 1.0)]

    loraine.set_rgb(zip(shelves, colours))
    time.sleep(0.3)
