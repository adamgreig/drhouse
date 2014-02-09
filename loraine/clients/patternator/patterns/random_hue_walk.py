# Patternator pattern
# Every beat, picks a random fully saturated colour and sets the bottom
#   bookshelf to this colour.  Colours propogate up through the shelves.

import random
import colorsys

shelf_names = ["bookshelf.one",
               "bookshelf.two",
               "bookshelf.three",
               "bookshelf.four",
               "bookshelf.five",
               "bookshelf.six"]


def random_hue_walk(beat, beat_progress, bpm):
    shelves = {}
    for i in range(0, 6):
        random.seed(beat - i)
        hue = random.random()
        r, g, b = [int(x * 255) for x in colorsys.hsv_to_rgb(hue, 1.0, 1.0)]
        shelves[shelf_names[i]] = (r, g, b)

    return shelves
