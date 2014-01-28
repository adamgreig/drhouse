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
	
step=10
Rstep, Gstep, Bstep = 1, 1, 1
R,G,B = 0,0,0
while True:
	if random.random()>0.999:
		Rstep = -Rstep
	R += Rstep

	if random.random()>0.999:
		Gstep = -Gstep
	G += Gstep

	if random.random()>0.999:
		Bstep = -Bstep
	B += Bstep


	if R>255 or R<0:
		Rstep = -Rstep
		if R > 255:
			R = 255
		if R < 0:
			R = 0
	if G>255 or G<0:
		Gstep = -Gstep
		if G > 255:
			G = 255
		if G < 0:
			G = 0
	if B>255 or B<0:
		Bstep = -Bstep
		if B > 255:
			B = 255
		if B < 0:
			B = 0



	shelf_colours[0] = (R, G, B)
	sys.stdout.write("\r"+" "*80)
	sys.stdout.write("\rR,G,B=\t{0}\t{1}\t{2}\tsteps=\t{3}\t{4}\t{5}".format(R,G,B,Rstep,Gstep,Bstep))

	# Propogate the shelf colours:
	for i in range(len(shelves)-1, -1, -1):
		shelf_colours[i] = shelf_colours[i-1]
	set_shelves()
	time.sleep(0.01)










