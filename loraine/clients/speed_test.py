import socket
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
msg_on = "bookshelf.four=255,255,255".encode()
msg_off = "bookshelf.four=0,0,0".encode()

while True:
    sock.sendto(msg_on, ("192.168.2.5", 7878))
    sock.sendto(msg_off, ("192.168.2.5", 7878))
