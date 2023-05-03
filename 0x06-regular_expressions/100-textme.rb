#!/bin/bash/env ruby
#Textme

message = ARGV[0]
regex = /^From: (\+?\w+).*To: (\+?\w+).*Flags: ([A-Z,]+)$/
matches = message.match(regex)
sender = matches[1]
receiver = matches[2]
flags = matches[3].split(',')
puts "#{sender},#{receiver},#{flags}"
