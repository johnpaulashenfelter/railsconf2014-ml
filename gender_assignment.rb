require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'sequel'
require 'sexmachine'

# Connect db
DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'machine_learning', :user=>'rails')

# Setup table to hold data
DB.drop_table(:user_demographics)
DB.create_table(:user_demographics) do
  foreign_key :user_id
  String :first_name
  String :assigned_gender
  String :real_gender
end

# Load detector
d = SexMachine::Detector.new(:case_sensitive => false)

# Assign users
users = DB[:users]
demo = DB[:user_demographics]

users.each do |user|
  name = user[:first_name]
  gender = d.get_gender user[:first_name]
  demo.insert(user_id: user[:id], first_name: name, assigned_gender: gender.to_s)
  puts "#{name}, #{gender}"
end