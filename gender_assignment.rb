require 'rubygems'
require 'bundler/setup'
require 'sequel'
require 'sexmachine'

d = SexMachine::Detector.new(:case_sensitive => false)

DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'machine_learning', :user=>'rails')
users = DB[:users]
users.each do |user|
  puts "#{user[:first_name]}, #{d.get_gender user[:first_name]}"
end