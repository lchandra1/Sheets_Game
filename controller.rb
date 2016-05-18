require 'sinatra'
require_relative 'sheets.rb'

get '/' do 
	@game = Game.new
	erb :index
end

post "/" do 
	if params[:yesorno] == "yes"
		erb :outcome
	else redirect "/"
	end
end


get '/instructions' do
	erb :instructions
end

post '/results' do
	end