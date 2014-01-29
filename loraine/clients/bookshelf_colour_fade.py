import time
import socket
import random
import sys

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
ORACLE_IP = "192.168.2.5"
ORACLE_PORT = 7878

shelves = ("one", "two", "three", "four", "five", "six")
colours = ("255,0,0", "0,255,0", "0,0,255", "0,0,0")

def set_shelf(shelf, colour):
	msg = "bookshelf.{0}={1},{2},{3}".format(shelf, colour[0], colour[1], colour[2])
	sock.sendto(msg.encode(), (ORACLE_IP, ORACLE_PORT))

def set_shelves():
	for i in range(len(shelves)):
		set_shelf(shelves[i], shelf_colours[i])

# Initialise shelves to black:
shelf_colours = [[0, 0, 0]] * len(shelves)
set_shelves()

# Setup shift register:
SPACING = 25
shift_reg = [[0, 0, 0]] * len(shelves) * SPACING

rgb = [0, 0, 0]
shift_reg[0] = rgb
steps = [1, 1, 1]

while True:
	for i in range(3):
		if random.random() > 0.999:
			steps[i] = -steps[i]
		rgb[i] += steps[i]

		if rgb[i] > 255:
			steps[i] = -steps[i]
			rgb[i] = 255
		if rgb[i] < 0:
			steps[i] = -steps[i]
			rgb[i] = 0

	sys.stdout.write("\r" + " " * 80) # Clear line
	sys.stdout.write("\rR,G,B=\t{0}\t{1}\t{2}\t".format(rgb[0], rgb[1], rgb[2]))
	sys.stdout.write("steps=\t{0}\t{1}\t{2}".format(steps[0], steps[1], steps[2]))
	sys.stdout.flush()

	# Propogate the shift register:
	for i in range(len(shift_reg) - 1, 0, -1):
		shift_reg[i] = tuple(shift_reg[i - 1])

	# Extract taps:
	for i in range(len(shelves)):
		shelf_colours[i] = shift_reg[i * SPACING]

	# Update shelves:
	set_shelves()
	time.sleep(0.01)










