import serial
import struct


class LightstripControl:
    """Control the lightstrip via the Arduino.
       Initialise with *port* (path to the port) and *baud* (baud rate).
    """
    def __init__(self, port="/dev/ttyACM0", baud=115200):
        self.ser = serial.Serial(port, baud)

    def set_colour(self, red, green, blue):
        """Set the RGB colour, each component 0 to 100"""
        red = int(red * 2.54)
        green = int(green * 2.54)
        blue = int(blue * 2.54)
        self.ser.write(struct.pack("BBBB", 0xFF, red, green, blue))

    def __del__(self):
        self.ser.close()
