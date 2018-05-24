

class MP3Importer 
  
  attr_accessor :path
  
  @@all = []
  
  def initialize(path)
    @path = path
  end
  
  def files
    raw_files = Dir["#{@path}/*.mp3"]
    files = raw_files.collect{|file| file.split("#{path}/")[1]}
  end 
  
  def import
    files
    puts files
    song_objs = @files.each {|song_name| Song.new_by_filename(song_name)}
    puts song_objs
    song_objs
  end
 
end
    
    