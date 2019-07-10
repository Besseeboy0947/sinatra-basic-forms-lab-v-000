require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @new_pooch = Puppy.new(params[:name], params[:breed], params[:age])
QS
    erb :display_puppy
  end
end
