class InstagramController < ApplicationController
	get '/' do
    erb :'instagram/index'
	end
end