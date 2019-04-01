
Dado("que o produto desejado é {string}") do |produto|
  @produto_nome = produto
end

Dado("o valor do produto é de {string}") do |valor|
  @produto_valor = valor
end

Quando("eu adiciono {int} unidade\\(s)") do |quantidade|
    quantidade.times do
    find('.menu-item-info-box', text: @produto_nome.upcase).find('.add-to-cart').click
    end
end
  
Então("deve ser adicionado {int} unidade\\(s) deste item") do |quantidade|
    cart = find('#cart')

  #(1x) Cup Cake interpolação
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
  puts "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor deve ser de {string}") do |valor_total|
   cart = find('#cart')
   total = cart.find('tr',text: 'Total:').find('td')
   expect(cart).to have_text valor_total
   expect(total.text).to eql valor_total
   #puts total.text
   #puts valor_total
   #jquery $('#cart tr:contains("Total:")');
end