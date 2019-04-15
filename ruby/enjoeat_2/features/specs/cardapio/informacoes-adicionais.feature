#language: pt

Funcionalidade: Informações Adicionais
    Para que eu possa ver as Informações adicionais
    Sendo um usuario que escolheu um restaurante
    Posso ver a categoria, descrição detalhada e horario de funcionamento

    @infos
    Cenario: Detalhes do restaurante

        Dado que acesso a lista de restaurantes
        Quando eu escolho um restaurante "Burger House"
        Então eu vejo as seguintes informações adicionais:
                | categoria | Hamburgers                               |
                | descrição | 40 Anos se especializando em trash food. |
                | horários  | Funciona todos os dias, de 10h as 22h    |