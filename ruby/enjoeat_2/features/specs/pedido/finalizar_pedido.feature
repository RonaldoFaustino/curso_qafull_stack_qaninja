#language: pt
@green_food
Funcionalidade: Finalizar pedido
    Para que eu possa receber o pedido no meu endereço
    Sendo um usuário, fecho o carrinho com itens
    Posso finalizar o meu pedido

    # BDD (Desenvolvimento guiado por comportamento) => voltado para o negócio
    # BDT (Teste guiado por comportamento)

    # Cenario: Finaliozar pedido com Cartão Refeição

    #     Dado que eu fechei meu carrinho
    #     E preencho o campo nome com "Ricardo"
    #     E preencho o campo email com "ricardo@gamil.com"
    #     E preencho o campo confirmaremail com "ricardo@gamil.com"
    #     E preencho a rua com "Paulista"
    #     E preencho o campo de pagamento "Cartão Refeição"
    #     Quando eu clico em "Finalizar Pedido"
    #     Então devo ver uma mensagem de sucesso
      @pedido  
      Cenario: Finalizar pedido com Cartão Refeição

        Dado que eu fechei o pedido com os itens:
             | quantidade | nome                | descricao                                | subtotal |
             | 1          | Suco Detox          | Suco de Couve, cenaura, salsinha e maça. | R$ 14,90 |
             | 2          | Hamburger de Quinoa | Cheio de fibras e muito saboroso.        | R$ 21,00 |
        E informoei meus dados de entrega:
             | nome        | Ricardo             |
             | email       | ricardo@gamil.com   |
             | rua         | Avenida Pirajussara |
             | numero      | 1800                |
             | Complemento | casa                |
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então devo ver a mensagem:
        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """
