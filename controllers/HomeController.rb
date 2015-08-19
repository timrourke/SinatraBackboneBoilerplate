class HomeController < ApplicationController
	get '/' do
    erb :index
	end

	get '/one' do
		erb :one
	end

	get '/two' do
		erb :two
	end

	get '/three' do
		erb :three
	end
end