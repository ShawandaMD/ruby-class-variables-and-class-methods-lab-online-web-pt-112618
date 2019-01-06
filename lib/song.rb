class Song 
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end   

  @@count = 0
  @@artists = []
  @@genres = []
  
  def self.count
    @@count
  end  

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    genre_count = @@genres.group_by{ |genre| genre}.map{|genre, num| [genre, num.size]}.to_h
  end  
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      artist_count[artist]
    end  
  end

end  