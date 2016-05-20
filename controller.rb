require 'sinatra'
require_relative 'sheets.rb'
enable :sessions

get '/' do 
	@game = Game.new
	session[:game] = @game
	erb :index
end

post "/" do 
	if params[:yesorno] == "yes"
		@cards = session[:game] 
		erb :outcome
	else redirect "/"
	end
end


get '/instructions' do
	erb :instructions
end

post '/results' do
	end