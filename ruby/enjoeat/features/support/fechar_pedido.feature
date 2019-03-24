#language: pt

Funcionalidade: Finalizar pedido
    Para que meu pedido seja encaminhado para a fila de preparação
    Sendo um cliente que já adicionou um ou mais produtos no carrinho
    Posso finalizaar o meu pedido com Cartão de Débito, dinheiro ou Refeição.

    @dinheiro 
    Cenário: Pagar com Dinheiro
         
        Dado que possuo itens no meu carrinho
        E eu já fechei o meu pedido
        Quando eu finalizo o pedido com "Dinheiro"
        Então meu pedido é concluido com a mensagem:

        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """

    Cenário: Pagar com Cartão de débito

        Dado que possuo itens no meu carrinho
        E eu já fechei o meu pedido
        Quando eu finalizo o pedido com "Cartão de Débito"
        Então meu pedido é concluido com a mensagem:

        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """
    
    Cenário: Pagar com Cartão de refeição

        Dado que possuo itens no meu carrinho
        E eu já fechei o meu pedido
        Quando eu finalizo o pedido com "Cartão Refeição"
        Então meu pedido é concluido com a mensagem:

        """
        Seu pedido foi recebido pelo restaurante. Prepare a mesa que a comida está chegando!
        """