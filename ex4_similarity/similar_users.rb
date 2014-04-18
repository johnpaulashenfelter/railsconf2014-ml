require 'rubygems'
require 'bundler/setup'

require 'linalg'
require 'pry'
require 'sequel'

#DB = Sequel.connect('postgres://localhost/machine_learning?user=rails')
DB = Sequel.connect('sqlite://machine-learning.db')

users_list = DB[:users].all #limit(100)

answers = []
users = {}
cols = %w(html css js ruby ios biz android php wp design devtools)
rejects = []

users_list.each_with_index do |user,i|
  points = [user[:html_points], user[:css_points], user[:js_points], user[:ruby_points], user[:ios_points], user[:biz_points], user[:android_points], user[:php_points], user[:wp_points], user[:design_points], user[:devtools_points]]
  if points.inject(&:+) > 0
    users[i] = "#{user[:first_name]} #{user[:last_name]}"
    answers << points
  else
    rejects << "{user[:first_name]} #{user[:last_name]}"
  end
end

puts "Rejected #{rejects.count} records for 0 earned points"
puts "Using #{users.count} users for recommendations"

m = Linalg::DMatrix.columns(answers)
# Compute the SVD Decomposition
u, s, vt = m.singular_value_decomposition
vt = vt.transpose

# Take the 2-rank approximation of the Matrix
#   - Take first and second columns of u  (6x2)
#   - Take first and second columns of vt (4x2)
#   - Take the first two eigen-values (2x2)
u2 = Linalg::DMatrix.join_columns [u.column(0), u.column(1)]
v2 = Linalg::DMatrix.join_columns [vt.column(0), vt.column(1)]
eig2 = Linalg::DMatrix.columns [s.column(0).to_a.flatten[0,2], s.column(1).to_a.flatten[0,2]]

# Here comes Bob, our new user
#user = DB[:users].where('id = 111716').first
#a=[user[:html_points], user[:css_points], user[:js_points], user[:ruby_points], user[:ios_points], user[:biz_points], user[:android_points], user[:php_points], user[:wp_points], user[:design_points], user[:devtools_points]]

a=[7,0,0,94,160,7,1,19,0,0,19]
puts "#{a} Test User (Bob)"

bob = Linalg::DMatrix[a]
bobEmbed = bob * u2 * eig2.inverse

# Compute the cosine similarity between Bob and every other User in our 2-D space
user_sim, count = {}, 1
v2.rows.each { |x|
    user_sim[count] = (bobEmbed.transpose.dot(x.transpose)) / (x.norm * bobEmbed.norm)
    count += 1
  }

threshold = 0.98
puts "Filtering all users less than #{threshold} cosine similarity"

# Remove all users who fall below the 0.90 cosine similarity cutoff and sort by similarity
similar_users = user_sim.delete_if {|k,sim| sim < threshold }.sort {|a,b| b[1] <=> a[1] }

puts "Found #{similar_users.count} similar users"

similar_users.each do |u|
  printf "%s %s (ID: %d, Similarity: %0.3f) \n", answers[u[0]], users[u[0]], u[0], u[1]
end


# We'll use a simple strategy in this case:
#   1) Select the most similar user
#   2) Compare all items rated by this user against your own and select items that you have not yet rated
#   3) Return the ratings for items I have not yet seen, but the most similar user has rated
similarUsersScores = m.column(similar_users[0][0]-1).transpose.to_a.flatten
myScores = bob.transpose.to_a.flatten

not_seen_yet = {}
myScores.each_index { |i|
  not_seen_yet[i+1] = similarUsersScores[i] if myScores[i] == 0 and similarUsersScores[i] != 0
}

binding.pry

printf "\n %s recommends: \n", users[similar_users[0][0]]
not_seen_yet.sort {|a,b| b[1] <=> a[1] }.each { |item|
  puts "\t #{cols[item[0]-1].upcase} Track .. I earned #{item[1]} points"
}

print "We'identical!" if not_seen_yet.size == 0