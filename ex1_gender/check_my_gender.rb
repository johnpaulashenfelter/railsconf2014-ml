require 'rubygems'
require 'bundler/setup'
require 'sexmachine'

# Create detector
d = SexMachine::Detector.new(case_sensitive: false)

# List of users
users = [
'john',
'susan',
'kim',
'jamie',
'river',
'cedar',
'justice',
'your name here'
]

users.each do |name|
  gender = d.get_gender name
  puts "#{name}, #{gender}"
end