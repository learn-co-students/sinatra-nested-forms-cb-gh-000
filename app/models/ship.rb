class Pirate
	attr_accessor :name, :weight, :height
	SHIPS = []
	def initialize(name, type, booty)
		@name, @type, @booty = name, type, booty
		SHIPS << self
	end

	def self.all
		SHIPS
	end

	def self.clear
		SHIPS.destroy
	end

end
