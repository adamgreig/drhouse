# Patternator pattern
# Does nothing -- example pattern.

def example_pattern(beat, beat_progress, bpm):
    # beat is a zero-based integer which increments upon each beat occuring
    # beat_progress is a float which progresses from 0 to 1 through the
    #   duration of each beat
    # bpm is a float giving current best guess of the current bpm

    # RGB values are integers from 0 to 255 inclusive.
    return {"bookshelf.one":    (0, 0, 0),
            "bookshelf.two":    (0, 0, 0),
            "bookshelf.three":  (0, 0, 0),
            "bookshelf.four":   (0, 0, 0),
            "bookshelf.five":   (0, 0, 0),
            "bookshelf.six":    (0, 0, 0)}
