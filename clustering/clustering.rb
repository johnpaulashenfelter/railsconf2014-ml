# class Cluster
#   attr_accessor :id, :people

#   def initialize(id, size, people)
#     self.id     = id
#     self.people = people
#   end

#   def euclidean_distance(a, b)
#     sq = a.zip(b).map{|a,b| (a - b) ** 2}
#     Math.sqrt(sq.inject(0) {|s,c| s + c})
#   end

# end

class Cluster

  # Initialize the class instance
  def initialize
    @people = Array.new
    @vcentroid = Hash.new( "0" )
  end

  # Add a feature vector to the cluster
  def add( person )
    @people.push( person )
  end

  # Remove a feature vector from the cluster
  def remove( person )
    @people.delete( person )
  end

  # Return the cluster centroid
  def get_people
    return @people
  end

  # Calculate the centroid vector from the cluster members
  def calculate_centroid

    # Clear the centroid vector
    @vcentroid.clear
    tcentroid = Hash.new( "0" )

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

  # Calculate the geometric distance
  def calculate_gd( person )

    gd = 0.0

    person.each do |key,value|
      gd += (@vcentroid[key].to_f-value.to_f) * (@vcentroid[key].to_f-value.to_f)
    end

    gd = Math.sqrt(gd)

    return gd

  end

end

def kmeans

  # Sample user hashes
  marc = { 'linux' => '13', 'oss' => '10', 'cloud' => '6',
           'java' => '0', 'agile' => '0' }
  megan = { 'linux' => '3', 'oss' => '0', 'cloud' => '1',
            'java' => '6', 'agile' => '7' }
  elise = { 'linux' => '11', 'oss' => '0', 'cloud' => '9',
            'java' => '0', 'agile' => '1' }
  jill = { 'linux' => '0', 'oss' => '3', 'cloud' => '0',
           'java' => '9', 'agile' => '8' }

  # Define our two clusters and initialize them with two users
  clusters = []
  cluster =  Cluster.new
  cluster.add(marc)
  cluster.add(megan)
  clusters << cluster

  cluster = Cluster.new
  cluster.add(elise)
  cluster.add(jill)
  clusters << cluster

  changed = true

  # Repeat until no further membership changes occur
  while changed do

    changed = false

    # Recalculate each cluster's centroid (mean)
    clusters.each_with_index do |cluster, i|
      cluster.calculate_centroid

      # Get the membership of each cluster
      people = cluster.get_people

      # Check members of cluster 1 against the cluster centroids
      puts "Checking cluster #{i}"
      people.each do |person|
        clusters.each_with_index do |other_cluster, j|
          if other_cluster.calculate_gd(person) < cluster.calculate_gd(person) then
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
    puts "Cluster #{i} contains"
    people = cluster.get_people
    people.each do |person|
      person.each do |key,value| print "#{key}=#{value} " end
      puts
    end
    puts
  end

end

kmeans

puts <<EOF
================================================
Checking cluster 1
Feature vector moved from cluster 1 to cluster 2
Checking cluster 2
Feature vector moved from cluster 2 to cluster 1
Checking cluster 1
Checking cluster 2

Cluster 1 contains
linux=13 oss=10 cloud=6 java=0 agile=0
linux=11 oss=0 cloud=9 java=0 agile=1

Cluster 2 contains
linux=0 oss=3 cloud=0 java=9 agile=8
linux=3 oss=0 cloud=1 java=6 agile=7
EOF
