require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
    time = Time.new
    @holidayscurrent = HolidApi.get(year: time.year, month: time.month)
    @holidaysdob = HolidApi.get(year: 1994, month: 5)
		erb :"index#{ rand(3) + 1 }"
	end
end
