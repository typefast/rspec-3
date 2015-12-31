require 'zombie'

RSpec.describe Zombie do 
  
  before :each do 
    @zombie = Zombie.new
  end

  describe "#new" do 
    it "creates a new instance of Zombie" do 
      expect(@zombie).to be_an_instance_of(Zombie)
    end
  end

end