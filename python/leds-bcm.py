#!/usr/bin/env python

import time

try:
    import RPi.GPIO as GPIO
except RuntimeError:
    print("Error importing RPi.GPIO!  This is probably because you need superuser privileges.  You can achieve this by using 'sudo' to run your script")

GPIO.setmode(GPIO.BCM)

channels = [18, 23, 24]
for channel in channels:
    print "Activating channel", channel
    GPIO.setup(channel, GPIO.OUT)
    GPIO.output(channel, GPIO.HIGH)
    time.sleep(1)

GPIO.cleanup()

