#!/usr/bin/env ruby

require 'pi_piper'
include PiPiper

GPIO_GEN1 = 18
GPIO_GEN4 = 23
GPIO_GEN5 = 24

pins = [GPIO_GEN1, GPIO_GEN4, GPIO_GEN5]

3.times do
  pins.each do |pin|
    pin = PiPiper::Pin.new(:pin => pin, :direction => :out)
    pin.on
    sleep 0.15
    pin.off
  end
end
