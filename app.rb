require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

  post '/pirates' do
    puts params.to_s
    @p = Pirate.new(params[:pirate])
    params[:pirate][:ships].each do |s|
      Ship.new(s)
    end
    @s = Ship.all
    erb :'/pirates/show'
  end
end
end
