class Pirate
  attr_accessor :name, :weight, :height

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
  end

  @@all = []

  def self.all
    @@all
  end

end
