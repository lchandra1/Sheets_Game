require 'sinatra'

get '/' do 
	erb :index
end

get '/instructions' do
	erb :instructions
end

post '/resuults' do
	end