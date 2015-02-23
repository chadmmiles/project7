require 'sinatra'
require 'holidapi'

class MyWebApp < Sinatra::Base
	get '/' do
    puts params
    time = Time.new
    @holidayscurrent = HolidApi.get(year: time.year, month: time.month)
    @holidaysdob = HolidApi.get(country: params['country'], year: params['year'], month: params['month'])
		erb :"index#{ rand(3) + 1 }"
	end
end
