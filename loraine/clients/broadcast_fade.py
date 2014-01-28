import time
import socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
channels = ("two", "five",)
while True:
    for value in range(10, 256):
        print(value)
        for channel in channels:
            msg = "broadcast.{0}={1}".format(channel, value).encode()
            sock.sendto(msg, ("192.168.2.5", 7878))
            time.sleep(0.001)
    for value in range(255, 10, -1):
        print(value)
        for channel in channels:
            msg = "broadcast.{0}={1}".format(channel, value).encode()
            sock.sendto(msg, ("192.168.2.5", 7878))
            time.sleep(0.001)
    #time.sleep(0.01)
    #for channel in channels:
        #msg = "broadcast.{0}=0".format(channel).encode()
        #sock.sendto(msg, ("192.168.2.5", 7878))
