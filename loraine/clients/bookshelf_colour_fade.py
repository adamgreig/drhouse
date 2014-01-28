import time
import socket
import random
import sys

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
oracle_ip = "192.168.2.5"
oracle_port = 7878

shelves = ("one", "two", "three", "four", "five", "six")
shelf_colours = list()
colours = ("255,0,0", "0,255,0", "0,0,255", "0,0,0")

def set_shelf(shelf, colour):
	msg = "bookshelf.{0}={1},{2},{3}".format(shelf,colour[0],colour[1],colour[2])
	sock.sendto(msg.encode(), (oracle_ip, oracle_port))

def set_shelves():
	for i in range(0,len(shelves)):
		set_shelf(shelves[i], shelf_colours[i])

# Initialise shelf colours:
for i in range(0,len(shelves)):
	shelf_colours.append((0,0,0))

set_shelves()

RGB=list((0, 0, 0))
shelf_colours[0]=RGB
steps=list((1,1,1))	
while True:
	for i in range(0,3):
		if random.random()>0.999:
			steps[i] = -steps[i]
		RGB[i] += steps[i]

		if RGB[i] > 255:
			steps[i] = -steps[i]
			RGB[i] = 255
		if RGB[i] < 0:
			steps[i] = -steps[i]
			RGB[i] = 0

	sys.stdout.write("\r"+" "*80)
	sys.stdout.write("\rR,G,B=\t{0}\t{1}\t{2}\tsteps=\t{3}\t{4}\t{5}".format(RGB[0],RGB[1],RGB[2],steps[0],steps[1],steps[2]))

	# Propogate the shelf colours:
	for i in range(len(shelves)-1, 0, -1):
		shelf_colours[i] = tuple(shelf_colours[i-1])
	set_shelves()
	time.sleep(0.01)










