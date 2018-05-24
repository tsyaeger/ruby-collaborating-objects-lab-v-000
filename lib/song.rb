

class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  

  def initialize(song_name)
    @name = song_name
    @@all << self
  end 
  
  def name=(name)
    @name = name
  end
  

  def artist_name=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    @artist = artist
    artist.songs << self
  end
  
  
  def self.new_by_filename(filename)
    artist, song, ext = filename.split(" - ")
    song = self.new(song)
    song.artist = Artist.find_or_create_by_name(artist)
    Artist.add_song(song)
    song
  end

end


