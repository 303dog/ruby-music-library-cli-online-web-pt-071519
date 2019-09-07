module Concerns::Persistable
  
  def self.create_from_filename(name)
    self.all.detect{|o| o.name == name}
    self
  end
  
end