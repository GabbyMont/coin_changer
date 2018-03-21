require 'sinatra' #requiring sinatra
require_relative 'coinchanger_function.rb' #requiring 'coinchanger_function' file
enable :sessions #enabling sessions

get '/' do
	erb :first_name #transferring to the file
end

post '/name' do
	session[:name] = params[:name] #can be named anything//assigning name to a value
	name = session[:name] #assigning session to variable 'name'
	redirect '/coinamount' #redirecting to 'coinamount'
end

get '/coinamount' do
	name = params[:name]
	erb :change, locals:{name:name}
end

post '/changer' do
	session[:coinamount] = params[:coinamount]
	#p session[:coinamount]
	redirect '/total'
end

get '/total' do
	#p session[:coinamount]
	singluar_coins = coinchanger_app(session[:coinamount].to_i) #setting 'coinchanger_app' equal to singular coins//converting to integers
	#p singluar_coins
	session[:results] = plural_coins(singluar_coins) #setting 'plural_coins' equal to res ses
	#p session[:results]
	erb :results,locals:{name:session[:name], coinamount:session[:coinamount], results:session[:results]}
end
	