#!/usr/bin/env ruby
string = ARGV[0]
regex = /\b[A-Z]+\b/
matches = string.scan(regex)
puts matches
