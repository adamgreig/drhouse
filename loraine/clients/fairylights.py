import sys
import time
import loraine

lights = ["fairylights.back", "fairylights.middle", "fairylights.front"]


def fade_on():
    val = 0
    while val <= 255:
        loraine.set_grey(zip(lights, [val]*3))
        val += 5
        time.sleep(0.05)


def fade_off():
    val = 255
    while val >= 0:
        loraine.set_grey(zip(lights, [val]*3))
        val -= 5
        time.sleep(0.05)


if __name__ == "__main__":
    if len(sys.argv) == 2:
        if sys.argv[1] == "on":
            fade_on()
        elif sys.argv[1] == "off":
            fade_off()
    else:
        fade_on()
        time.sleep(3)
        fade_off()
