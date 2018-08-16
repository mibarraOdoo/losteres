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

