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
clusterer = CompleteLinkage.new.build(data_set, 3)

puts 'Based solely on badges earned`'
clusterer.clusters.each_with_index do |cluster, index| 
  puts "Group #{index+1}"
  p cluster.data_items
end


# Now with all the points broken out
questions = %w(html css js ruby ios biz android php wp design devtools)
answers = []
users.each do |user|
  answers << [user[:html_points], user[:css_points], user[:js_points], user[:ruby_points], user[:ios_points], user[:biz_points], user[:android_points], user[:php_points], user[:wp_points], user[:design_points], user[:devtools_points]]
end

data_set = DataSet.new(:data_items => answers, :data_labels => questions)

# Let's group answers in 3 groups
clusterer = CompleteLinkage.new.build(data_set, 3)

puts 'Groups using broken-out points'
clusterer.clusters.each_with_index do |cluster, index| 
  puts "Group #{index+1}"
  p cluster.data_items
end
