require 'rubygems'
require 'bundler/setup'
require 'sexmachine'

# Create detector
d = SexMachine::Detector.new(case_sensitive: false)

# Quick demo
name = 'YOUR NAME HERE'
gender = d.get_gender name
puts "#{name}, #{gender}"

# List of interesting users
users = [
'john',
'susan',
'kim',
'jamie',
'river',
'cedar',
'justice'
]

puts "Interesing results..."
users.each do |name|
  gender = d.get_gender name
  puts "#{name}, #{gender}"
end