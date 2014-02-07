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
  cluster1 = Cluster.new
  cluster1.add(marc)
  cluster1.add(megan)

  cluster2 = Cluster.new
  cluster2.add(elise)
  cluster2.add(jill)

  changed = true

  # Repeat until no further membership changes occur
  while changed do

    changed = false

    # Recalculate each cluster's centroid (mean)
    cluster1.calculate_centroid
    cluster2.calculate_centroid

    # Get the membership of each cluster
    people1 = cluster1.get_people
    people2 = cluster2.get_people

    # Check members of cluster 1 against the cluster centroids
    puts "Checking cluster 1"
    people1.each do |person|
      if cluster2.calculate_gd(person) < cluster1.calculate_gd(person) then
        puts "Feature vector moved from cluster 1 to cluster 2"
        cluster1.remove(person)
        cluster2.add(person)
        changed = true
      end
    end

    # Check members of cluster 2 against the cluster centroids
    puts "Checking cluster 2"
    people2.each do |person|
      if cluster1.calculate_gd(person) < cluster2.calculate_gd(person) then
        puts "Feature vector moved from cluster 2 to cluster 1"
        cluster2.remove(person)
        cluster1.add(person)
        changed = true
      end
    end

  end

  puts

  puts "Cluster 1 contains"
  people = cluster1.get_people
  people.each do |person|
    person.each do |key,value| print "#{key}=#{value} " end
    puts
  end
  puts

  puts "Cluster 2 contains"
  people = cluster2.get_people
  people.each do |person|
    person.each do |key,value| print "#{key}=#{value} " end
    puts
  end
  puts

end

kmeans

# Checking cluster 1
# Feature vector moved from cluster 1 to cluster 2
# Checking cluster 2
# Feature vector moved from cluster 2 to cluster 1
# Checking cluster 1
# Checking cluster 2

# Cluster 1 contains
# linux=13 oss=10 cloud=6 java=0 agile=0
# linux=11 oss=0 cloud=9 java=0 agile=1

# Cluster 2 contains
# linux=0 oss=3 cloud=0 java=9 agile=8
# linux=3 oss=0 cloud=1 java=6 agile=7