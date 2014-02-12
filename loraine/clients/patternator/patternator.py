import time
import loraine

from patterns import random_hue

while True:
    beat = time.time() // 1
    beat_progress = time.time() % 1
    bpm = 60

    bookshelf_state = random_hue.random_hue(beat, beat_progress, bpm)

    loraine.set_rgb(list(bookshelf_state.items()))

    time.sleep(0.02)
