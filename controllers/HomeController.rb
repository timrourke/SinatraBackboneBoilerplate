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

	get '/four' do
		erb :four
	end

	get '/five' do
		erb :five
	end

	get '/six' do
		erb :six
	end

	get '/eight' do
		erb :eight
	end

	get '/nine' do
		erb :nine
	end

	get '/api/instagram' do
		@photos = Instagram.all.to_json
	end

	get '/api/instagram/:id' do
		@photo = Instagram.find(params[:id]).to_json
	end

	post '/api/instagram' do
		request_body = JSON.parse(request.body.read.to_s)
		@photos = Instagram.create(request_body).to_json
	end

	put '/api/instagram/:id' do
		request_body = JSON.parse(request.body.read.to_s)
		
		@photo = Instagram.find(request_body[:id])
		@photo.username = request_body[:username]
		@photo.post = request_body[:post]
		@photo.description = request_body[:description]
		@photo.hashtags = request_body[:hashtags]

		@photo.save
		@photo.to_json
	end

	patch '/api/instagram/:id' do
		request_body = JSON.parse(request.body.read.to_s)

		@photo = Instagram.find(request_body[:id])
		@photo.username = request_body[:username]
		@photo.post = request_body[:post]
		@photo.description = request_body[:description]
		@photo.hashtags = request_body[:hashtags]

		@photo.save
		@photo.to_json
	end

	delete '/api/instagram/:id' do
		@photo = Instagram.destroy(params[:id]).to_json
	end


end