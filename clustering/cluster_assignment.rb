#!/usr/bin/env bundle exec ruby

Bundler.require

DB = Sequel.connect(:adapter=>'postgres', :host=>'localhost', :database=>'machine_learning', :user=>'rails')

users = DB[:users].limit(10)
clusters = []
# 1. Put every individual into a separate cluster

users.each_with_index do |user|
  clusters << {id: user[:id], distance: user[:person_badges_count], data: user}
end


col = []
users.each_with_index do |person, i|
  rows = []
  users.each_with_index do |other_person, j|
    rows << Math.sqrt((person[:person_badges_count] - other_person[:person_badges_count])**2)
  end
  col << rows
end
binding.pry

# 2. Find the closest pair of clusters that aren't full
# 3. Merge them into a new cluster (removing the old clusters)
# 4. Mark all the people as being in the new cluster
# 5. If the new cluster is size 10, it is full
# 6. Repeat

# Returns the Euclidean distance between 2 points
#
# Params:
#  - a, b: list of coordinates (float or integer)
#
def euclidean_distance(a, b)
  sq = a.zip(b).map{|a,b| (a - b) ** 2}
  Math.sqrt(sq.inject(0) {|s,c| s + c})
end

# Returns the associated point of our tags_set, relative to our
# tags_space.
#
# Params:
#  - tags_set: list of tags
#  - tags_space: _ordered_ list of tags
def tags_to_point(tags_set, tags_space)
  tags_space.map{|c| tags_set.member?(c) ? 1 : 0}
end

# Returns other_items sorted by similarity to this_item 
# (most relevant are first in the returned list)
#
# Params:
#  - items: list of hashes that have [:tags]
#  - by_these_tags: list of tags to compare with
def sort_by_similarity(items, by_these_tags)
  tags_space = by_these_tags + items.map{|x| x[:tags]}  
  tags_space.flatten!.sort!.uniq!

  this_point = tags_to_point(by_these_tags, tags_space)
  other_points = items.map{|i| 
    [i, tags_to_point(i[:tags], tags_space)]
  }

  similarities = other_points.map{|item, that_point|
    [item, euclidean_distance(this_point, that_point)]
  }

  sorted = similarities.sort {|a,b| a[1] <=> b[1]}
  return sorted.map{|point,s| point}
end