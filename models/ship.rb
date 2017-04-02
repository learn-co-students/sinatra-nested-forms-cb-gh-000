
class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(name,type,booty)
    @name = name
    @type = type
    @booty = booty
    @@ships << self
  end
  def self.all
    @@ships
  end
  def self.clear
    @@ships = []
  end
end
