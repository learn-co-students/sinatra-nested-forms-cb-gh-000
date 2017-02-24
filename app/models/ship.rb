class Ship

  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(args)
    self.name = args[:name]
    self.type = args[:type]
    self.booty = args[:booty]
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

end
