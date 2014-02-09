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
      gd += (@vcentroid[key].to_f-value.to_f)**2
    end

    gd = Math.sqrt(gd)

    return gd

  end

end