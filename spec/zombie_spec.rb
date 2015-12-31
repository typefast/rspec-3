require 'zombie'

RSpec.describe Zombie do 
  
  before :each do 
    @zombie = Zombie.new("Name")
  end

  describe "#new" do 
    it "creates a new instance of Zombie" do 
      expect(@zombie).to be_an_instance_of(Zombie)
    end
    
    it "Errors with too few parameters" do 
      expect { zombie = Zombie.new() }.to raise_error(ArgumentError)
    end
  end
  
  describe "#name" do 
    it "returns the zombies name" do 
      expect(@zombie.name).to eq("Name")
    end
    
    it "changes the zombies name" do 
      expect(@zombie.name="Zed").to eq(@zombie.name)
    end
  end
  
  describe "to_s" do 
    it "should return a string representation of the zombie object" do 
      expect(@zombie.to_s).to eq("Zombie named: #{@zombie.name}")
    end
  end
  
  describe "#eat" do 
    it "eats the given parameter" do 
      expect(@zombie.eat("cat")).to eq("#{@zombie.name} eats the cat")
    end
  end

end