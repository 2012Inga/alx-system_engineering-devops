#!/usr/bin/env ruby

# Get the argument passed to the script
input_string = ARGV[0]

# Define the regular expression pattern
pattern = /School/

# Match the pattern in the input string
match = input_string.match(pattern)

# Output the matched result
puts match ? match[0] : ""
