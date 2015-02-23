require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
    time = Time.new
    params[:country] ||="US"
    params[:year] ||=time.year
    params[:month] ||=time.month
    puts params
    @holidays = HolidApi.get(country: params[:country], year: params[:year], month: params[:month])
		erb :"index#{ rand(3) + 1 }"
	end
end
