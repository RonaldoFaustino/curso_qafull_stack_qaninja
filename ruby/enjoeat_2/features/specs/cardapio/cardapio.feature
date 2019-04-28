#language: pt

Funcionalidade: Cardápio
    Para que eu possa decidir o que eu pretendo comer
    Sendo um usuário que escolheu um restaurante
    Posso acessar o cardápio

    Contexto: Restaurantes
        Dado que acesso a lista de restaurantes    

    Cenario: Produto

        Quando eu escolho um restaurante "Burger House"
        Então vejo os seguintes itens disponiveis no cardápio
            | produto | descricao | preco |
            | Classic Burger | O clássico. Não tem como errar. | R$ 18,50|
            | Batatas Fritas | Batatas fritas crocante| R$ 5,50 |
            | Refrigerante| O refri mais gelado da cidade. | R$ 4,50|
        # Então vejo os produtos disponiveis
        # E vejo a descricao dos produtos
        # E vejo o preco dos produtos
    @cardapio
    Cenario: Carrinho vazio
        
        Quando eu escolho um restaurante "Burger House"
        Então vejo a seguinte mensagem no carrinho "Seu carrinho está vazio!"
