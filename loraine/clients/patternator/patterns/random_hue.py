# Patternator pattern
# Every beat, picks a random fully saturated colour and sets the entire
#   bookshelf to this colour.

import random
import colorsys


def random_hue(beat, beat_progress, bpm):
    random.seed(beat)
    hue = random.random()
    r, g, b = [int(x*255) for x in colorsys.hsv_to_rgb(hue, 1.0, 1.0)]

    return {"bookshelf.one":    (r, g, b),
            "bookshelf.two":    (r, g, b),
            "bookshelf.three":  (r, g, b),
            "bookshelf.four":   (r, g, b),
            "bookshelf.five":   (r, g, b),
            "bookshelf.six":    (r, g, b)}
