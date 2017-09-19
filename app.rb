require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do

      # syntax for erb into a new path
      erb :'pirates/new'
    end

    post '/pirates' do

    # intialize using mass assignment from a pirate hash
    @pirate = Pirate.new(params[:pirate])

      # initialize using mass assignment from a ship hash
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :'pirates/show'
    end

  end
end
