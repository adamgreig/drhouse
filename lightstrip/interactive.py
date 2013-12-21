from lightstrip.control import LightstripControl

port = input("Port? [/dev/ttyACM0] >")
baud = input("Baud? [115200] >")
if not port:
    port = "/dev/ttyACM0"
if not baud:
    baud = 115200
else:
    baud = int(baud)

control = LightstripControl(port, baud)

while True:
    colours = input("Colour? (R,G,B) {0,1} > ").split(",")
    control.set_colour(float(colours[0]), float(colours[1]), float(colours[2]))
