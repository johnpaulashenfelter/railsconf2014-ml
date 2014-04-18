require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'sequel'
require 'faraday'
require 'json'

# Connect db
DB = Sequel.connect('sqlite://machine-learning.db')

# Setup table to hold data
DB.create_table!(:location_demographics) do
  foreign_key :user_id
  String :location_json
  String :country_code
  String :country_name
  String :region_code
  String :region_name
  String :city
  String :metro_code
  String :areacode
  Float :lat
  Float :lng
end

# Assign users
users = DB[:users]
demo = DB[:location_demographics]


# Setup local freegeoip server
# cd $GOPATH/src/github.com/fiorix/freegeoip
# ./freegeoip
GEOCODER = 'http://127.0.0.1:8080'

# Connect to local freegeoip server
conn = Faraday.new(url: GEOCODER) do |faraday|
  faraday.request  :url_encoded             # form-encode POST params
  faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
end

users.each do |user|
  if user[:current_login_ip].match(Resolv::IPv4::Regex)
    json = conn.get("/json/#{user[:current_login_ip]}").body
    geodata = JSON.parse(json)
    puts "#{user[:first_name]}, #{geodata.inspect}"
    demo.insert(user_id: user[:id], lat: geodata["latitude"], lng: geodata["longitude"], country_code: geodata["country_name"], country_name: geodata["country_name"], region_code: geodata["region_code"], region_name: geodata["region_name"], city: geodata["city"], metro_code: geodata["metro_code"], areacode: geodata["areacode"], location_json: json)
  end
end
