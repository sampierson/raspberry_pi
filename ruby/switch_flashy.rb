#!/usr/bin/env ruby

require 'pi_piper'
include PiPiper

class Flasher

  GPIO_GEN1 = 18
  GPIO_GEN4 = 23
  GPIO_GEN5 = 24
  LED_PINS = [GPIO_GEN1, GPIO_GEN4, GPIO_GEN5]

  def initialize
    @pins = LED_PINS.map do |pin|
      PiPiper::Pin.new(:pin => pin, :direction => :out)
    end
  end

  def flash_lights
    @pins.each do |pin|
      pin.on
      sleep 0.15
      pin.off
    end
  end
end

flasher = Flasher.new

GPIO_GEN6 = 25
SWITCH_PIN = GPIO_GEN6

after :pin => SWITCH_PIN, :goes => :high do
  puts "Button pressed"
  flasher.flash_lights
end

PiPiper.wait

