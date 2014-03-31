import loraine
import sys

addresses = ["broadcast.zero",
             "broadcast.one",
             "broadcast.two",
             "broadcast.three",
             "broadcast.four",
             "broadcast.five",
             "broadcast.six",
             "broadcast.seven"]

loraine.set_grey(zip(addresses, [int(sys.argv[1])] * 8))
