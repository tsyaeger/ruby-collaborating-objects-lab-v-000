

class MP3Importer 
  
  attr_accessor :path, :files
  
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    raw_files = Dir["#{@path}/*.mp3"]
    raw_files = raw_files.join("")
    @files = raw_files.split("#{path}/")
    @files.shift
    @files
  end 
  
  def import
    files
    puts @files.inspect
    @files.collect do |song_name| 
      song = Song.new_by_filename(song_name)
      Artist.save(song)
    end
  end
 
end
    
    