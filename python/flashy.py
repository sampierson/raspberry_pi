#!/usr/bin/env python

import time

try:
    import RPi.GPIO as GPIO
except RuntimeError:
    print("Error importing RPi.GPIO!  This is probably because you need superuser privileges.  You can achieve this by using 'sudo' to run your script")

GPIO.setmode(GPIO.BOARD)

channels = [12, 16, 18]

for count in range(1, 10):
    for channel in channels:
        print "Activating channel", channel
        GPIO.setup(channel, GPIO.OUT)
        GPIO.output(channel, GPIO.HIGH)
	time.sleep(0.2)
        GPIO.output(channel, GPIO.LOW)

GPIO.cleanup()

