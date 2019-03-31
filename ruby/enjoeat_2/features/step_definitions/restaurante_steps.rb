# Dado("que eu tenho uma lista de restaurante") do
# 	#massa de teste lista
# 	@restaurant_date = [
# 		{ name: 'Bread & Bakery', category: 'Padaria', delivery_time: '25 minutos', rating: 4.9},
# 		{ name: 'Burger House', category: 'Hamburgers', delivery_time: '30 minutos', rating: 3.5}
# 	]	
# end


Quando("acesso a lista de restaurantes") do
	visit '/restaurants'
end

# Então("vejo todas as opções disponíveis") do
# 	restaurantes = all('.col-sm-6') # o método all devolve uma coleção de elementos (array)
# 	expect(restaurantes.size).to be > 0
# 	#expect(restaurantes.size).to eql 6
# 	puts restaurantes.size
# 	puts restaurantes.class
# end

# Então("cada restaurante deve exibir sua categoria") do
	
# 	restaurantes = all('.col-sm-6')

# 	@restaurant_date.each_with_index do |value, index|
# 		puts value[:category]
# 		puts restaurantes[index].text
# 		expect(restaurantes[index]).to have_text value[:category]
# 	end


# 	# restaurant_date.each do |value|
# 	# 	puts value[:category]
# 	# end

# 	# puts '######## Primeiro Item ##########'
# 	# puts restaurantes[0].text
# 	# puts '######## Segundo Item ##########'
# 	# puts restaurantes[1].text
# end

# Então("cada restaurante deve exibir o tempo de entrega") do
# 	restaurantes = all('.col-sm-6')

# 	@restaurant_date.each_with_index do |value, index|
# 		puts value[:delivery_time]
# 		puts restaurantes[index].text
# 		expect(restaurantes[index]).to have_text value[:category]
# 	end
# end

# Então("cada restaurante deve exibir sua nota de avaliação") do
# 	restaurantes = all('.col-sm-6')

# 	@restaurant_date.each_with_index do |value, index|
# 		puts value[:rating]
# 		puts restaurantes[index].text
# 		expect(restaurantes[index]).to have_text value[:category]
# 	end
# end

##################### Cenario Outline ###################################

# Então("cada restaurante de ter {int} {string} {string} {string} {float}") do |id,name, category, delivery_time, rating|
# 	restaurantes = all('.col-sm-6')

# 	expect(restaurantes[id]).to have_text name.upcase
# 	expect(restaurantes[id]).to have_text category
# 	expect(restaurantes[id]).to have_text delivery_time
# 	expect(restaurantes[id]).to have_text rating
# end

#########################################################################

Dado("que temos os seguintes restaurantes") do |table|
	@restaurant_data =  table.hashes
	#puts table.hashes
	#puts table.class
  end
  
  Então("devo ver todos os restaurantes desta lista") do
	restaurants = all('.col-sm-6')

	@restaurant_data.each_with_index do |value, index|
		expect(restaurants[index]).to have_text value['nome'].upcase
		expect(restaurants[index]).to have_text value['categoria']
		expect(restaurants[index]).to have_text value['entrega']
		expect(restaurants[index]).to have_text value['avaliacao']

	end
  end