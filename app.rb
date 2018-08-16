require 'sinatra'

$palabra_secreta = String.new("manzana")
$intentos = 7
$palabra = String.new("XXXXXXX")

get '/' do
  erb :index  
end

post '/validar' do
	@letra = params[:letra]

	if $palabra_secreta.include? @letra
		@resultado = "La letra esta en la palabra"

		$palabra = ""
		$palabra_secreta.each_char do |i|
		 if i == @letra
		  $palabra = $palabra + @letra
		 else
		  $palabra = $palabra + "X"		
		 end
		end
	else
		$intentos = $intentos -1
	end
	erb :index
end
