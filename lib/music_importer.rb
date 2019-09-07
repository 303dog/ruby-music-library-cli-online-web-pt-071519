class MusicImporter
  
  extend Concerns::Persistable
  
  attr_reader :path 
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.entries(path).select {|path| path.match(".mp3")}

  end
  
  def import
    files.each{|f| Song.create_from_filname(f)}
  end
end 


  #def self.create_from_filename(filename)
    #song = self.new_from_filename(filename)
    #song.save
  #end






