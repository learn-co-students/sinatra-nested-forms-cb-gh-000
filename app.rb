require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      temp = [:name, :weight, :height, :ships].map { |e| params[e] }
      @pirate = Pirate.new(*temp)
      erb :"pirates/show"
    end

  end
end
