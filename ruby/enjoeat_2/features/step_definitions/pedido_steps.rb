
Dado("que eu fechei o pedido com os itens:") do |table|
    @product_list = table.hashes
    steps %{
        Quando eu adiciono todos os itens 
    }
    @rest_page.cart.close
end
 
Dado("informoei meus dados de entrega:") do |table|
    user = table.rows_hash
    #puts user
    @order_page.fill_user_data(user)
   
end
  
Quando("eu finalizo o pedido com {string}") do |payment|
    @order_page.finish(payment)
end
  
Então("devo ver a mensagem:") do |msg|
    expect(@order_page.summary).to have_content msg
end