require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
      ship_1 = params[:pirate][:ships][0]
      @ship1 = Ship.new(ship_1[:name],ship_1[:type],ship_1[:booty])
      ship_2 = params[:pirate][:ships][1]
      @ship2 = Ship.new(ship_2[:name],ship_2[:type],ship_2[:booty])
      erb :'pirates/show'
    end

  end
end
