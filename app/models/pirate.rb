class Pirate
  attr_reader :name, :weight, :height

  PIRATES = []

  def initialize(arg)
    @name = arg[:name]
    @weight = arg[:weight]
    @height = arg[:height]
    PIRATES << self
  end

  def self.all
    PIRATES
  end
end
