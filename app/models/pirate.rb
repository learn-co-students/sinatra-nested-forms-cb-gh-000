class Pirate

  attr_accessor :name, :weight, :height

  PIRATES = []

  def initialize(details)
    self.name = details[:name]
    self.weight = details[:weight]
    self.height = details[:height]

    self.class.all << self
  end

  def self.all
    PIRATES
  end
  
end
