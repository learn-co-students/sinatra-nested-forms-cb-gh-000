class Pirate
  attr_reader :height, :name, :weight

  def initialize(params)
    @height = params[:height]
    @name = params[:name]
    @weight = params[:weight]
  end
end
