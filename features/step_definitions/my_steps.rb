When(/^Inicio el juego$/) do
  visit '/'
end

Then(/^Veo el titulo del juego "(.*?)"$/) do |titulo|
  last_response.should have_xpath("//title") do |t|
	t.should contain ('Adivina la palabra')
	end
end

Then(/^Veo la categoria "(.*?)"$/) do |categoria|
  last_response.should have_xpath("//option") do |o|
	o.should contain ('Frutas')
	end
end

When(/^Ingreso una letra "(.*?)"$/) do |arg1|
  visit '/'
  fill_in("letra", :with => arg1)
  click_button("ingresar")	
end

Then(/^Veo "(.*?)"$/) do |l|
  	last_response.should have_xpath("//p[@id=\"letraingresada\"]") do |o|
	o.should contain (l)
	end
end

When(/^Como la palabra es manzana e Ingreso una letra "(.*?)"$/) do |arg1|
  visit '/'
  fill_in("letra", :with => arg1)
  click_button("ingresar")
end

Then(/^Veo Resultado "(.*?)"$/) do |l|
	last_response.should have_xpath("//p[@id=\"resultado\"]") do |o|
	o.should contain (l)
	end
end

When(/^Como la letra "(.*?)" no esta en Manzana$/) do |arg1|
  visit '/'
  fill_in("letra", :with => arg1)
  click_button("ingresar")
end

Then(/^Veo en intentos "(.*?)"$/) do |l|
	last_response.should have_xpath("//p[@id=\"intentos\"]") do |o|
	o.should contain (l)
	end
end


