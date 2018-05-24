

class MP3Importer 
  
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    raw_files = Dir["#{@path}/*.mp3"]
    raw_files = raw_files.join("")
    files = raw_files.split("#{path}/")
    files.shift
    files
  end 
  
  def import
    files
    @files.each {|song_name| Song.new_by_filename(song_name)}
    end
  end
 
end
    
    