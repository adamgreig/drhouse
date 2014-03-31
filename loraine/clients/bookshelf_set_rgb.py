import loraine
import sys

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

if len(sys.argv) != 4 and len(sys.argv) != 2:
    colours = [(0, 0, 0)] * 6

if len(sys.argv) == 4:
    colours = [(int(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))] * 6

if len(sys.argv) == 2:
    colours = [(int(sys.argv[1]), int(sys.argv[1]), int(sys.argv[1]))] * 6

loraine.set_rgb(zip(shelves, colours))
