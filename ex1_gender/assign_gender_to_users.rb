require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'sequel'
require 'sexmachine'

# Connect db
# pg DB = Sequel.connect(adapter: 'postgres', host: 'localhost', database: 'machine_learning', user: 'rails')
DB = Sequel.connect('sqlite://machine-learning.db')

# Setup table to hold data
DB.create_table!(:gender_demographics) do
  foreign_key :user_id
  String :first_name
  String :assigned_gender
  String :real_gender
end

# Load detector
d = SexMachine::Detector.new(case_sensitive: false)

# Assign users
users = DB[:users]
demo = DB[:gender_demographics]

users.each do |user|
  name = user[:first_name]
  gender = d.get_gender user[:first_name]
  demo.insert(user_id: user[:id], first_name: name, assigned_gender: gender.to_s)
end

puts "Results"
puts demo.group_and_count(:assigned_gender).all

puts "Androgenous Names"
andys = demo.where(assigned_gender: 'andy')
andys.each {|a| puts a[:first_name]}