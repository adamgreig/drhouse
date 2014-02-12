import loraine
import alsaaudio

import numpy as np
from scipy.signal import lfilter, firwin

gain = 0.3
agc_setpoint = 6000.0
agc_rate = 0.005
agc_min = 0.0
agc_max = 10.0

block_size = 1024
sampling_rate = 44100

filter_n = 512
filter_h = firwin(filter_n, 10.0, nyq=sampling_rate / 2)
zi = np.zeros(filter_n - 1)

pcm = alsaaudio.PCM(type=alsaaudio.PCM_CAPTURE)
pcm.setperiodsize(block_size)
pcm.setrate(sampling_rate)

samples = np.empty(block_size * 100)
envelope = np.empty(block_size * 100)
lenvs = np.empty(block_size * 100)


red = (255, 0, 0)
orange = (255, 80, 0)
green = (0, 255, 0)
off = (0, 0, 0)
shelf_colours = [green, green, green, orange, orange, red]
shelves = ["bookshelf.one",
           "bookshelf.two",
           "bookshelf.three",
           "bookshelf.four",
           "bookshelf.five",
           "bookshelf.six"]


def set_shelves(level):
    """level is 0 to 6"""
    colours = shelf_colours[:level] + [off]*(len(shelf_colours) - level)
    loraine.set_rgb(zip(shelves, colours))


while True:
#for i in range(100):
    n_frames, frames = pcm.read()
    frames = np.fromstring(frames, dtype='<i2').reshape((-1, 2))
    rectified = gain * np.abs(frames[:, 0] + frames[:, 1])

    agc_error = agc_setpoint - np.max(rectified)
    if agc_error > 0:
        gain += agc_rate
    else:
        gain -= agc_rate
    gain = gain if agc_min <= gain <= agc_max else (
        agc_min if gain < 0 else agc_max)
    #print(gain)

    env, zi = lfilter(filter_h, 1.0, rectified, zi=zi)
    #lenv = np.log(env)
    lenv = env
    #print(np.max(lenv))
    #lenvs[i*block_size:(i+1)*block_size] = lenv
    #level = int((np.max(lenv) - 2000)/1000)
    level = int(np.max(env) / 1000)
    level = level if 0 <= level <= 6 else (0 if level < 0 else 6)
    #draw_shelves(level)
    set_shelves(level)

    #samples[i*block_size:(i+1)*block_size] = rectified
    #envelope[i*block_size:(i+1)*block_size] = env

envelope = envelope[10*block_size:]
samples = samples[10*block_size:]
lenvs = lenvs[10*block_size:]

#print(np.mean(envelope))
#print(np.std(envelope))
print(np.mean(lenvs))
print(np.std(lenvs))
import matplotlib.pyplot as plt
plt.plot(samples)
plt.plot(envelope)
plt.plot(envelope[::block_size])
plt.show()
