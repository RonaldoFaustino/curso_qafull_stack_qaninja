


module Enjoeat
		def prato_do_dia(dia)
				if dia == 'segunda-feira'
						'Virado a Paulista'
				elsif dia =='terça-feira'
						'Dobradinha'
				elsif dia =='quarta-feira'
						'Feijoada'
				elsif dia =='quinta-feira'
						'Massa'
				elsif dia =='sexta-feira'
						'Peixe'
				else 
					'Favor verificar o prato do dia'        
				end
		end
end
World Enjoeat

Dado("que hoje é {string}") do |dia|
  @hoje = dia
end

# Dado("que hoje é terça-feira") do
# 		@hoje = 'terça-feira'
# 	end

# Dado("que hoje é segunda-feira") do
# 		@hoje = 'segunda-feira'
# 	end

# 	Dado("que hoje é quarta-feira") do
# 		@hoje = 'quarta-feira'
# 	end
	
# 	Dado("que hoje é quinta-feira") do
# 		@hoje = 'quinta-feira'
# 	end
	
# 	Dado("que hoje é sexta-feira") do
# 		@hoje = 'terça-feira'
# 	end
	
	Quando("eu pergunto qual é o prato do dia") do
		@resposta_obtida = prato_do_dia(@hoje)
	end
	
	Então("a resposta deve ser {string}") do |resposta_esperada|
		expect(@resposta_obtida).to eql resposta_esperada
	end

	