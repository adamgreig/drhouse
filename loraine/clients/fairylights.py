import sys
import time
import astral
import loraine
import datetime

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


def auto():
    """Call at xx15 and xx45 each hour please."""
    city = astral.Astral()['london']
    now_dt = datetime.datetime.now()
    sunrise_tt = city.sun(date=now_dt, local=False)['sunset'].timetuple()
    sunrise_t = datetime.time(sunrise_tt.tm_hour, sunrise_tt.tm_min,
                              sunrise_tt.tm_sec)
    sunrise_dt = datetime.datetime.combine(datetime.date.today(), sunrise_t)

    delta = (now_dt - sunrise_dt).total_seconds()

    if 0.0 <= delta <= 1800.0:
        fade_on()

    if now_dt.hour == 3 and now_dt.minute < 30:
        fade_off()


if __name__ == "__main__":
    if len(sys.argv) == 2:
        if sys.argv[1] == "on":
            fade_on()
        elif sys.argv[1] == "off":
            fade_off()
        elif sys.argv[1] == "auto":
            auto()
    else:
        fade_on()
        time.sleep(3)
        fade_off()
