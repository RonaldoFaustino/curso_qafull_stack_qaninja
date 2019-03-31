#language: pt

Funcionalidade: Restaurantes   F 
    Para que eu possa saber quais os restaurantes disponíveis com o tempo de entrega e nota de avaliação
    Sendo um usuário que deseja pedir comida
    Posso acessar a lista de restaurantes

    # Contexto: Lista de restaurante
    #     Dado que eu tenho uma lista de restaurante

    # Cenario: Todos os restaurantes

    #     Quando acesso a lista de restaurantes
    #     Então vejo todas as opções disponíveis
    
    # Cenario: Categorias

    #     Quando acesso a lista de restaurantes
    #     Então cada restaurante deve exibir sua categoria

    # Cenario: Tempo de entrega

    #     Quando acesso a lista de restaurantes
    #     Então cada restaurante deve exibir o tempo de entrega

    # Cenario: Nota de avaliação

    #     Quando acesso a lista de restaurantes
    #     Então cada restaurante deve exibir sua nota de avaliação

    ##################### Cenario Outline ###################################

# @temp
#     Esquema do Cenario: Restaurantes diponiveis

#         Quando acesso a lista de restaurantes
#         Então cada restaurante de ter <id> <nome> <categoria> <entrega> <avaliacao>

#         Exemplos:
#         | id | nome             | categoria    | entrega      | avaliacao |
#         | 0  | "Bread & Bakery" | "Padaria"    | "25 minutos" | 4.9       |
#         | 1  | "Burger House"   | "Hamburgers" | "30 minutos" | 3.5       |
#         | 2  | "Coffee Corner"  | "Cafeteria"  | "20 minutos" | 4.8       |

##############################################################################
    @info
    Cenario: Restaurante disponíveis

        Dado que temos os seguintes restaurantes
            | nome           | categoria  | entrega    | avaliacao |
            | BREAD & BAKERY | Padaria    | 25 minutos | 4.9       |
            | Burger House   | Hamburgers | 30 minutos | 3.5       |
            | Coffee Corner  | Cafeteria  | 20 minutos | 4.8       |
        Quando acesso a lista de restaurantes
        Então devo ver todos os restaurantes desta lista 