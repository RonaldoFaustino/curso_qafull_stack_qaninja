Dado("que eu tenho uma lista de restaurante") do
	#massa de teste
	@restaurant_date = [
		{ name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9},
		{ name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5}
	]	
end


Quando("acesso a lista de restaurantes") do
	visit '/restaurants'
end

Então("vejo todas as opções disponíveis") do
	restaurantes = all('.col-sm-6') # o método all devolve uma coleção de elementos (array)
	expect(restaurantes.size).to be > 0
	#expect(restaurantes.size).to eql 6
	puts restaurantes.size
	puts restaurantes.class
end

Então("cada restaurante deve exibir sua categoria") do
	
	restaurantes = all('.col-sm-6')

	@restaurant_date.each_with_index do |value, index|
		puts value[:category]
		puts restaurantes[index].text
		expect(restaurantes[index]).to have_text value[:category]
	end


	# restaurant_date.each do |value|
	# 	puts value[:category]
	# end

	# puts '######## Primeiro Item ##########'
	# puts restaurantes[0].text
	# puts '######## Segundo Item ##########'
	# puts restaurantes[1].text
end

Então("cada restaurante deve exibir o tempo de entrega") do
	restaurantes = all('.col-sm-6')

	@restaurant_date.each_with_index do |value, index|
		puts value[:delivery_time]
		puts restaurantes[index].text
		expect(restaurantes[index]).to have_text value[:category]
	end
end

Então("cada restaurante deve exibir sua nota de avaliação") do
	restaurantes = all('.col-sm-6')

	@restaurant_date.each_with_index do |value, index|
		puts value[:rating]
		puts restaurantes[index].text
		expect(restaurantes[index]).to have_text value[:category]
	end
end