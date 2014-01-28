import time
import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

shelves = ("one", "two", "three", "four", "five", "six")
colours = ("255,0,0", "0,255,0", "0,0,255", "0,0,0")

for shelf in shelves:
    for colour in colours:
        msg = "bookshelf.{0}={1}".format(shelf, colour)
        sock.sendto(msg.encode(), ("192.168.2.5", 7878))
        time.sleep(0.2)
