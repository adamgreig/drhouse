import time
import math
import loraine

shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]


def set_shelves(colours):
    loraine.set_rgb(zip(shelves,
                        [tuple(int(x) for x in colours)] * len(shelves)))


def inc_to_rgb(state):
    rgb = [float(state)]*3

    # Cap blue and green to give a nice warm white
    rgb[2] = rgb[2] if rgb[2] < 0.6 else 0.6
    rgb[1] = rgb[1] if rgb[1] < 0.6 else 0.6

    # Superlinear decay on the blue to give a nice warm decay
    rgb[2] **= 2.5

    # Bodge factors for low values
    if state > 0.02:
        rgb[1] **= 1.5
    else:
        rgb[1] = state**0.5/50
        rgb[0] = rgb[1]

    # Rescale RGB:
    rgb = [x*255.0 for x in rgb]
    return rgb

state = 0.0
while True:
    beat = math.floor(time.time())
    beat_progress = time.time() % 1

    if beat_progress < 0.2:
        state += 0.08
    else:
        state /= 1.15
    state = state if 0.0 <= state <= 1.0 else (1.0 if state >= 1.0 else 0.0)

    rgb = inc_to_rgb(state)
    rgb = [int(x) for x in rgb]
#    print(str(state)+"\t"+str(rgb[0])+"\t"+str(rgb[1])+"\t"+str(rgb[2]))
    set_shelves(rgb)
    time.sleep(0.02)
