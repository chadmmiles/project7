require 'sinatra'

class MyWebApp < Sinatra::Base
	get '/' do
		"Welcome to my web app, world! Created by Chad Miles."
	end
end
