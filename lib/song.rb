require 'pry'
class Song
 attr_accessor :name,:artist,:genre
 @@count = 0
 @@genres =[]
 @@artists = []
def initialize(name,artist,genre)
  @name = name
  @genre = genre
  @artist = artist
  @@count+=1
  @@genres << @genre
  @@artists <<@artist
#binding.pry
end
 def self.count
    @@count
 end

 def self.genres
     @@genres.uniq
 end
def self.artists
  @@artists.uniq
end
#binding.pry

def self.genre_count
  @@genres.each do |key, value|

    if @@genres[key].include?(key)
      @@genres[key] << value + 1

    else
      @@genres[key] =[]
      @@genres[key] <<value
    end
end
end
end
