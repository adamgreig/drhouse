import serial
import struct

c_r = [0.43418846, 0.06470259, 0.0]
c_g = [0.2834586, 0.84048772, 0.0]
c_b = [0.0, 0.09480969, 0.5372549]


class LightstripControl:
    """Control the lightstrip via the Arduino.
       Initialise with *port* (path to the port) and *baud* (baud rate).
    """
    def __init__(self, port="/dev/ttyACM0", baud=115200):
        self.ser = serial.Serial(port, baud)

    def set_colour(self, red, green, blue):
        """Set the RGB colour, each component 0 to 255"""
        r = c_r[0] * red + c_r[1] * green + c_r[2] * blue
        g = c_g[0] * red + c_g[1] * green + c_g[2] * blue
        b = c_b[0] * red + c_b[1] * green + c_b[2] * blue
        self.ser.write(struct.pack("BBBB", 0xFF, r, g, b))

    def __del__(self):
        self.ser.close()
