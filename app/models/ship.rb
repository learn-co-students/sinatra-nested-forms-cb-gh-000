class Ship
  attr_reader :booty, :name, :type

  @@all = []

  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end

  def initialize(params)
    @booty = params[:booty]
    @name = params[:name]
    @type = params[:type]

    @@all << self
  end
end
