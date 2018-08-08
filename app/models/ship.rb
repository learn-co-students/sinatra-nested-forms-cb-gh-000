class Ship

  attr_accessor :name, :type, :booty

  SHIPS = []

  def initialize(details)
    details.each { |key, value| self.send("#{key}=", value)}
    self.class.all << self
  end

  def self.all
    SHIPS
  end

  def self.clear
    SHIPS.clear
  end
  
end
