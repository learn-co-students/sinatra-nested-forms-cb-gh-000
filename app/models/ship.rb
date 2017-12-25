class Ship
  @@all = []
  attr_accessor :name, :type, :booty
  def initialize(name: nil, type: nil, booty: nil)
    @name   = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
