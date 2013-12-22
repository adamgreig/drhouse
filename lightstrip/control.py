import serial
import struct


white = (183, 255, 137)


class LightstripControl:
    """Control the lightstrip via the Arduino.
       Initialise with *port* (path to the port) and *baud* (baud rate).
    """
    def __init__(self, port="/dev/ttyACM0", baud=115200):
        self.ser = serial.Serial(port, baud)

    def set_colour(self, red, green, blue):
        """Set the RGB colour, each component 0 to 255"""
        red = int(red * white[0]/255.0)
        green = int(green * white[1]/255.0)
        blue = int(blue * white[2]/255.0)
        self.ser.write(struct.pack("BBBB", 0xFF, red, green, blue))

    def __del__(self):
        self.ser.close()
