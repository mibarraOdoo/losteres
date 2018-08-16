require 'sinatra'

$palabra_secreta = String.new("manzana")
$intentos = 7

get '/' do
  erb :index  
end

post '/validar' do
	@letra = params[:letra]

	if $palabra_secreta.include? @letra
		@resultado = "La letra esta en la palabra"
	else
		$intentos = $intentos -1
	end
	erb :index
end
