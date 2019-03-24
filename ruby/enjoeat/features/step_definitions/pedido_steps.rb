Dado("que possuo itens no meu carrinho") do
    visit 'http://enjoeat.herokuapp.com/restaurants/burger-house/menu'
    
    # adiciona um item especifico
    # item = find('.menu-item-info-box', text: 'Classic Burger'.upcase)
    # puts item.text
    # item.find('a').click

    #adiciona um item qualquer
    produtos = all('.menu-item-info-box')
    produtos.sample.find('a').click
    #produtos[0].find('a').click
    # produtos.each do |p|
    #     puts p.text
    # end
end
  
Dado("eu já fechei o meu pedido") do
    find('a[href="/order"]').click
end
  
Quando("eu finalizo o pedido com {string}") do |forma_pagamento|
    find('input[formcontrolname="name"]').set 'Batista'
    find('input[formcontrolname="email"]').set 'batista.julio@com.com'
    find('input[formcontrolname="emailConfirmation"]').set 'batista.julio@com.com'
    find('input[formcontrolname="address"]').set 'Rua das Freiras'
    find('input[formcontrolname="number"]').set '58'
    find('input[formcontrolname="optionalAddress"]').set 'Casa'

    linha = find('mt-radio[formcontrolname="paymentOption"] div', text: forma_pagamento)
    linha.find('label div').click

    click_button 'Concluir Pedido'   
    sleep 5
end
  
Então("meu pedido é concluido com a mensagem:") do |mensagem|
    expect(page).to have_content mensagem
end