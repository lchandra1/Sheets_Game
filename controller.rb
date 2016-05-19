require 'sinatra'
require_relative 'sheets.rb'
enable :sessions

get '/' do 
	@game = Game.new
	@money = Game.new
	session[:game] = @game
	session[:money] = @money
	erb :index
end

post "/" do 
	if params[:yesorno] == "yes"
		@cards = session[:game] 
		@prize = session[:money]
		erb :outcome
	else redirect "/"
	end
end


get '/instructions' do
	erb :instructions
end

post '/results' do
	end