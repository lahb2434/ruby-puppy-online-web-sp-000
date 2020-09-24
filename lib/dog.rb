
class Dog 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    
    define_method "self" do |name|
      @@all << name
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