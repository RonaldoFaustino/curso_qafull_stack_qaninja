
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
    cart = find('#shopping-cart')

  #(1x) Cup Cake interpolação
  expect(cart).to have_text "(#{quantidade}x) #{@produto_nome}"
  puts "(#{quantidade}x) #{@produto_nome}"
end

Então("o valor deve ser de {string}") do |valor_total|
   cart = find('#shopping-cart')
   total = cart.find('tr',text: 'Total:').find('td')
   expect(cart).to have_text valor_total
   expect(total.text).to eql valor_total
   #puts total.text
   #puts valor_total
   #jquery $('#cart tr:contains("Total:")');
end

#lista de produtos
Dado("que os produtos desejados são:") do |table|
  @product_list = table.hashes
  puts @product_list
end

Quando("eu adiciono todos os itens") do
  @product_list.each do |p|
    p['quantidade'].to_i.times do
      find('.menu-item-info-box', text: p["nome"].upcase).find('.add-to-cart').click
    end
  end
end

Então("vejo todos os itens no carrinho") do
  cart = find("#shopping-cart")
  #quantidade = 1
  @product_list.each do |p|
    expect(cart).to have_text "(#{p["quantidade"]}x) #{p["nome"]}"
  end
end

# Remover itens do carrinho

Dado("que eu tenho os seguintes itens no carrinho:") do |table|
  @product_list = table.hashes
  #puts @product_list
  steps %{
    Quando eu adiciono todos os itens
  }

  # @product_list.each do |p|
  #   p['quantidade'].to_i.times do
  #     find('.menu-item-info-box', text: p["nome"].upcase).find('.add-to-cart').click
  #   end
  # end
end

Quando("eu removo somente o item {int}") do |item|
 #$('#cart table tbody tr')
 cart = find("#shopping-cart")
 cart.all("table tbody tr")[item].find(".danger").click
end

Quando("eu removo somente o {int}") do |item|
 cart = find("#shopping-cart")
 cart.all("table tbody tr")[item].find(".danger").click
end

Quando("eu removo todos os itens") do
  @product_list.each_with_index do |value,idx|
    #puts idx
    cart = find("#shopping-cart")
    cart.all("table tbody tr")[idx].find(".danger").click
  end
end

Então("vejo a seguinte mensagem no carrinho {string}") do |mensagem|
  cart = find("#shopping-cart")
  expect(cart).to have_text mensagem
end

Quando("eu limpo meu carrinho") do
  click_button "Limpar"
end