module Concerns::Persistable
  
  def create_from_filename(name)
    new.all.detect{|o| o.name == name}
  end
  
end