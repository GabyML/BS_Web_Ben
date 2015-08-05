require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/Register' do
  	@name = params[:Name]
  	erb :Register
  end

  get '/Game' do
  	@name = params[:Name]
  	erb :Game
  end

  set :views, Proc.new { File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end