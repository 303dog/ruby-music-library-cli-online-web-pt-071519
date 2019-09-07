module Concerns::Findable
  
    def save
      @@all << self
      self
    end
    
    def find_by_name(name)
      self.all.detect{|o| o.name == name}
    end
  
    def find_or_create_by_name(name)
      self.find_by_name(name)||self.create(name)
    end
    
    def reset_all
      self.all.clear
    end
    
    def count
      self.all.size 
    end
  end