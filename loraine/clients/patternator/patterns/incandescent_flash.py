# Incandescent Flash pattern
# Flashes, simulating an incandescent fillament bulb

import numpy as np
from scipy.interpolate import interp1d

inc_colours = np.array(((255, 130, 80),
                        (245, 110, 55),
                        (220, 85, 30),
                        (200, 70, 20),
                        (182, 60, 18),
                        (170, 50, 15),
                        (160, 40, 10),
                        (150, 35, 7),
                        (140, 30, 5),
                        (120, 20, 2),
                        (90, 12, 0),
                        (60, 4, 0),
                        (20, 1, 0),
                        (0, 0, 0)))
x = np.linspace(0, 1, inc_colours[:, 0].size)
inc_red = interp1d(x, inc_colours[:, 0], kind="linear")
inc_green = interp1d(x, inc_colours[:, 1], kind="linear")
inc_blue = interp1d(x, inc_colours[:, 2], kind="linear")


def inc_to_rgb(state):
    state = 1 - state
    rgb = (inc_red(state), inc_green(state), inc_blue(state))
    rgb = tuple([int(x) for x in rgb])
    return rgb


def incandescent_flash(beat, beat_progress, bpm):
    # beat is a zero-based integer which increments upon each beat occuring
    # beat_progress is a float which progresses from 0 to 1 through the
    #   duration of each beat
    # bpm is a float giving current best guess of the current bpm

    # beat = seconds/60*bpm
    # seconds = beat*60/bpm

    # Magic numbers ported from the old test_incandescent: (both linear)
    # Rise rate is 0.10 per 0.02 secs, or 5.00 per sec, or 300/bpm per beat
    # Fall rate is 0.05 per 0.02 secs, or 2.5 per sec, or 150/bpm per beat

    maximum = 1.0
    minimum = maximum - (150 / bpm) * 0.8
    minimum = minimum if minimum >= 0.0 else 0.0

    if 0 <= beat_progress < 0.1:
        state = minimum + 300 / bpm * (beat_progress + 0.1)

    if 0.1 <= beat_progress <= 0.9:
        state = maximum - 150 / bpm * (beat_progress - 0.1)

    if 0.9 < beat_progress <= 1.0:
        state = minimum + 300 / bpm * (beat_progress - 0.9)

    state = state if 0.0 <= state <= 1.0 else (1.0 if state >= 1.0 else 0.0)

    rgb = inc_to_rgb(state)

    return {"bookshelf.one":    rgb,
            "bookshelf.two":    rgb,
            "bookshelf.three":  rgb,
            "bookshelf.four":   rgb,
            "bookshelf.five":   rgb,
            "bookshelf.six":    rgb}
