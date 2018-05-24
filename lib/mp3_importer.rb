

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
    # puts @files.inspect
    song_objs = @files.collect do |song_name| 
      song = Song.new_by_filename(song_name)
    puts song_objs.inspect
    end
    Artist.class.save(song_objs)
  end
 
end
    
    