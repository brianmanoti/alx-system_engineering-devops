#!/usr/bin/env ruby
#An expression that matches 10digit number

string = ARGV[0]
regex = /\b\d{3}[-.]?\d{3}[-.]?\d{4}\b/
matches = string.scan(regex)
puts matches
