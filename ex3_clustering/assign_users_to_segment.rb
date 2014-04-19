require 'rubygems'
require 'bundler/setup'
require 'pry'
require 'sequel'

DB = Sequel.connect('sqlite://machine-learning.db')

class Cluster
  attr_reader :vcentroid

  def initialize
    @people = Array.new
    @vcentroid = Hash.new(0)
  end

  def add(person)
    @people.push(person)
  end

  def remove(person)
    @people.delete(person)
  end

  # Return the cluster centroid
  def get_people
    return @people
  end

  # Calculate the centroid vector from the cluster members
  def calculate_centroid

    # Clear the centroid vector
    @vcentroid.clear
    tcentroid = Hash.new(0)

    # Iterate through each feature vector
    @people.each do |person|

      # Sum the feature vectors in this cluster
      person.each do |key,value|
        tcentroid[key] = tcentroid.delete(key).to_i + value.to_i
      end

    end

    # Compute the average for the centroid
    tcentroid.each do |key,value|
      @vcentroid[key] = value.to_f / @people.length
    end

  end

  # Calculate the geometric distance of EACH ELEMENT in vector
  def calculate_gd(vector)
    gd = 0.0

    vector.each do |key,value|
      gd += (@vcentroid[key].to_f-value.to_f) * (@vcentroid[key].to_f-value.to_f)
    end

    gd = Math.sqrt(gd)
  end
end

def kmeans(k=3)

  # Define our clusters and initialize them with two users
  clusters = []
  k.times {clusters << Cluster.new}

  DB[:users].each do |user|
    n = user[:id] % k # assign randomly to groups
    clusters[n].add(badges: user[:person_badges_count])
  end

  changed = true

  # Repeat until no further membership changes occur
  while changed do

    puts "ITERATE"
    changed = false

    # Recalculate each cluster's centroid (mean)
    clusters.each_with_index do |cluster, i|
      cluster.calculate_centroid

      # Get the membership of each cluster
      people = cluster.get_people

      # Check members of cluster 1 against the cluster centroids
      puts "Checking cluster #{i}"
      cluster.get_people.each do |person|
        clusters.each_with_index do |other_cluster, j|
          if other_cluster.calculate_gd(person) < cluster.calculate_gd(person)
            puts "Feature vector moved from cluster #{i} to cluster #{j}"
            cluster.remove(person)
            other_cluster.add(person)
            changed = true
          end
        end
      end

    end
  end

  puts

  clusters.each_with_index do |cluster, i|
    puts "Cluster #{i} has #{cluster.get_people.count} members (#{cluster.vcentroid}) contains"
    people = cluster.get_people
    people.each do |person|
      person.each do |key,value| print "#{key}=#{value} " end
      puts
    end
    puts
  end

end

kmeans(3)
