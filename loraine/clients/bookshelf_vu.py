import sys
import time
import random
import socket

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

red = "255,0,0"
orange = "255,80,0"
green = "0,255,0"
off = "0,0,0"

shelf_colours = [green, green, green, orange, orange, red]
shelf_names = ["one", "two", "three", "four", "five", "six"]

ansi_red = "\033[0;31m"
ansi_grn = "\033[0;32m"
ansi_org = "\033[0;33m"
ansi_end = "\033[0m"

ansi_colours = [ansi_grn, ansi_grn, ansi_grn, ansi_org, ansi_org, ansi_red]


def draw_shelves(level):
    colours = ansi_colours[:level]
    sys.stdout.write("\r")
    for colour in colours:
        sys.stdout.write("{0}█{1}".format(colour, ansi_end))
    for _ in range(len(ansi_colours) - level):
        sys.stdout.write(" ")
    sys.stdout.flush()


def set_shelf(shelf, value):
    msg = "bookshelf.{0}={1}".format(shelf, value)
    sock.sendto(msg.encode(), ("192.168.2.5", 7878))


def set_shelves(level):
    """level is 0 to 6"""
    draw_shelves(level)
    colours = shelf_colours[:level] + [off]*(len(shelf_colours) - level)
    for idx, name in enumerate(shelf_names):
        set_shelf(name, colours[idx])


def move_to_level(current, new, delay):
    while current != new:
        current = current + 1 if new > current else current - 1
        set_shelves(current)
        time.sleep(delay)
    return current


level = 0
while True:
    level = move_to_level(level, random.randrange(6) + 1, random.random() / 5.)
