#!/usr/bin/env ruby

require 'wiringpi'

GPIO1 = 1

gpio = WiringPi::GPIO.new

gpio.pin_mode(1, WiringPi::OUTPUT)
gpio.digital_write(GPIO1, 1)
sleep 1
gpio.digital_write(GPIO1, 0)

