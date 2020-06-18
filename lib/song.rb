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
       ccount =1
    if @@genres[key].include?(key)
      @@genres[key] <<count
       count = 1
    else
      @@genres[key] =[]
      @@genres[key] <<count
    end
end
end
end
