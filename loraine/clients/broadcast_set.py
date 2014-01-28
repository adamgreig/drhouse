import sys
import socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
channels = ("zero", "one", "two", "three", "four", "five", "six", "seven")
for channel in channels:
    msg = "broadcast.{0}={1}".format(channel, sys.argv[1]).encode()
    sock.sendto(msg, ("192.168.2.5", 7878))
