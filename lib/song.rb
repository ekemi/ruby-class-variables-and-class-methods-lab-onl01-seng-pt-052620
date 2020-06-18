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

  genre_count = {}
  @@genres.each do |key|

    if genre_count[key]
        genre_count[key]+=1
    else
      genre_count [key] =1
    end
end
genre_count
end
end
