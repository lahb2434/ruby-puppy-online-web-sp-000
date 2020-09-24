
class Dog 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    def save
      @@all << self
    end
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    @@all = []
  end
  
  def self.print_all
    @@all.each{|dog_name| puts "#{dog_name}"}
  end
  
  
end