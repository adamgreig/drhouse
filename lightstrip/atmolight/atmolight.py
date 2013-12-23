import serial
import struct
import requests

from scipy.interpolate import LinearNDInterpolator

calibration = {
    (0, 0, 0): (0, 0, 0),
    (255, 0, 0): (255, 38, 0),
    (0, 255, 0): (86, 255, 0),
    (0, 0, 255): (0, 45, 254),
    (255, 255, 0): (191, 255, 0),
    (255, 0, 255): (255, 114, 255),
    (0, 255, 255): (96, 255, 255),
    (255, 255, 255): (183, 255, 137)
}

intp = LinearNDInterpolator(list(calibration.keys()),
                            list(calibration.values()))

port = input("Port? > ")
ser = serial.Serial(port, 38400)

while True:
    data = ser.read(19)
    r, g, b = [int(x) for x in intp(struct.unpack("BBB", data[16:19]))]
    print(r, g, b)
    r = requests.post("http://192.168.2.5:5000/set",
                      data={"red": r, "green": g, "blue": b})
