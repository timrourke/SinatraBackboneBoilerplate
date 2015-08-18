class ApplicationController < Sinatra::Base
	require 'bundler'
	Bundler.require()

	ActiveRecord::Base.establish_connection(
		:adapter	=> 'postgresql',
		:database	=> 'sinatra_backbone_boilerplate'
	)

	set :views, File.expand_path('../../views', __FILE__)
	set :public_folder, File.expand_path('../../public', __FILE__)

end