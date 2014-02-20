import time
import loraine

from patterns import random_hue
from patterns import incandescent_flash

#pattern = random_hue.random_hue
pattern = incandescent_flash.incandescent_flash

while True:
    beat = time.time() // 1
    beat_progress = time.time() % 1
    bpm = 60

    bookshelf_state = pattern(beat, beat_progress, bpm)

    loraine.set_rgb(list(bookshelf_state.items()))

    time.sleep(0.02)
