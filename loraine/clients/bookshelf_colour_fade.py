import time
import random
import loraine
import sys

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

shelf_colours = [(0, 0, 0)] * 6


def set_shelves():
    loraine.set_rgb(zip(shelves, shelf_colours))


# Initialise shelves to black:
set_shelves()

# Setup shift register:
SPACING = 25
shift_reg = [[0, 0, 0] for i in range(len(shelves) * SPACING)]

steps = [1, 1, 1]

while True:
    for i in range(3):
        if random.random() > 0.998:
            steps[i] = -steps[i]

        shift_reg[0][i] += steps[i]

        if shift_reg[0][i] > 255:
            steps[i] = -steps[i]
            shift_reg[0][i] = 255

        if shift_reg[0][i] < 0:
            steps[i] = -steps[i]
            shift_reg[0][i] = 0

#    sys.stdout.write("\r" + " " * 80)  # Clear line
#    sys.stdout.write("\rR,G,B=\t{0}\t{1}\t{2}\t".format(shift_reg[0][0],
#                                                        shift_reg[0][1],
#                                                        shift_reg[0][2]))
#    sys.stdout.write("steps=\t{0}\t{1}\t{2}".format(steps[0], steps[1],
#                                                    steps[2]))
#    sys.stdout.flush()

    # Propogate the shift register:
    for i in range(len(shift_reg) - 1, 0, -1):
        shift_reg[i] = tuple(shift_reg[i - 1])

    # Extract taps:
    for i in range(len(shelves)):
        shelf_colours[i] = shift_reg[i * SPACING]

    # Update shelves:
    set_shelves()
    time.sleep(0.01)
