require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'ai4r'
require 'sequel'
include Ai4r::Data
include Ai4r::Clusterers


DB = Sequel.connect('sqlite://machine-learning.db')

users = DB[:users]

# Let's do it with badges
answers = []
users.each do |user|
  answers << [user[:person_badges_count]]
end

data_set = DataSet.new(:data_items => answers, :data_labels => ['badges'])

# Let's group answers in 3 groups
clusterer = KMeans.new.build(data_set, 3)

puts 'Based solely on badges earned`'
clusterer.clusters.each_with_index do |cluster, index| 
  puts "Group #{index+1}"
  p cluster.data_items
end
