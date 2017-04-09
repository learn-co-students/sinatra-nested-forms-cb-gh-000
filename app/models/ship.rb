class Ship

  def self.clear
    "NO!"
  end

  attr_reader :name, :type, :booty

  def initialize params
    @name = params[:name]
    @type = params[:type]
    @booty = params[:booty]
  end



end
