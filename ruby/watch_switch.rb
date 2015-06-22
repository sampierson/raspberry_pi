#!/usr/bin/env ruby

require 'pi_piper'
include PiPiper

GPIO_GEN6 = 25 # GPIO25 = header pin 22

watch :pin => GPIO_GEN6 do
  puts "Pin changed from #{last_value} to #{value}"
end

#Or

after :pin => GPIO_GEN6, :goes => :high do
  puts "Button pressed"
end

PiPiper.wait
