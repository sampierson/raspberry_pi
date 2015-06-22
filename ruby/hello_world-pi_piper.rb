#!/usr/bin/env ruby

require 'pi_piper'
include PiPiper

pin = PiPiper::Pin.new(:pin => 18, :direction => :out)
pin.on
sleep 1
pin.off
