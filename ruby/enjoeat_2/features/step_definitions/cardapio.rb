Dado("que acesso a lista de restaurantes") do
    @rest_list_page.load
end

Quando("eu escolho um restaurante {string}") do |restaurante|
    @rest_list_page.go(restaurante) 
  end
  
  Então("vejo os seguintes itens disponiveis no cardápio") do |table|
    itens = @rest_page.menu_list

    product_data = table.hashes

    product_data.each_with_index do |value, index|
      expect(itens[index]).to have_text value["produto"].upcase
      expect(itens[index]).to have_text value["descricao"]
      expect(itens[index]).to have_text value["preco"]
    end
  end

  Então("eu vejo as seguintes informações adicionais:") do |table|
    #puts table.rows_hash
    infos = table.rows_hash
    detail = @rest_page.details
    expect(detail).to have_text infos['categoria']
    expect(detail).to have_text infos['descricao']
    expect(detail).to have_text infos['horarios']
  end

  Quando("eu adiciono {int} unidade \(s)") do |int|
    
  end
  
  Então("deve ser adicionado {int} unidade \(s) deste item") do |int|
    
  end