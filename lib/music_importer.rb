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
    files.each{|f| Song.create_from_filename(f)}
  end
end 


 






