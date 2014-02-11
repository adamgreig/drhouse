import time
import loraine

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

colours = ((255, 0, 0), (0, 255, 0), (0, 0, 255), (0, 0, 0))

for i, shelf in enumerate(shelves):
    for colour in colours:
        bookshelf_colours = [(0, 0, 0)] * len(shelves)
        bookshelf_colours[i] = colour

        loraine.set_rgb(zip(shelves, bookshelf_colours))
        time.sleep(0.2)
