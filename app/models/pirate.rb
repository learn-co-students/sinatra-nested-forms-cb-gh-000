class Pirate

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(args)
    self.name = args[:name]
    self.weight = args[:weight]
    self.height = args[:height]
    @@all << self
  end

  def self.all
    @@all
  end

end
