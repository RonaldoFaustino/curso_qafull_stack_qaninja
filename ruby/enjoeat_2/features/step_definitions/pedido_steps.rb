
Dado("que eu fechei o pedido com os itens:") do |table|
    @product_list = table.hashes
    steps %{
        Quando eu adiciono todos os itens 
    }
    @rest_page.cart.close
end
 
Dado("informoei meus dados de entrega:") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("eu finalizo o pedido com {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("devo ver a mensagem:") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end