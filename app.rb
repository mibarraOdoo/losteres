require 'sinatra'

get '/' do
  erb :index  
end

post '/validar' do
	@letra = params[:letra]
	erb :index
end
