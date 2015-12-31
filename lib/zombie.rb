class Zombie 
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def to_s
    "Zombie named: #{@name}"
  end
end