class Pirate
  @@all = []
  attr_accessor :name, :weight, :height, :ships
  def initialize(name, weight, height, ships = [])
    @name   = name
    @weight = weight
    @height = height
    @ships = ships.map { |e| Ship.new(e) }
    @@all << self
  end

  def self.all
    @@all
  end
end
