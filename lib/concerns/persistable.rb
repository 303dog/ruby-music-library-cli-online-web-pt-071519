module Concerns::Persistable
  
  def create_from_filename(name)
    self.all.detect{|o| o.name == name}
  end
  
end