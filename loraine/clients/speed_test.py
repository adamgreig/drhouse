import loraine

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]

colours_on = [(255, 255, 255)] * len(shelves)
colours_off = [(0, 0, 0)] * len(shelves)

while True:
    loraine.set_rgb(zip(shelves, colours_on))
    loraine.set_rgb(zip(shelves, colours_off))
