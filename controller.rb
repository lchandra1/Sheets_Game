require 'sinatra'
require_relative 'sheets.rb'
enable :sessions

get '/' do 

	if session[:game]
		@game = session[:game]
		@game.deal
	else
		@game = Game.new
		session[:game] = @game
	end


	
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