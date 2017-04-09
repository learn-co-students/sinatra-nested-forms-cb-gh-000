require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :index
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ships = []
      params[:pirate][:ships].each do |values|
        @ships << Ship.new(values)
      end
      erb :'pirates/show'
    end

  end
end
