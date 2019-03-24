#language:pt

Funcionalidade: Qual prato do dia
    Queremos saber qual o prato do dia na capital paulista

    Cenario: Hoje é dia de Virado a Paulista

        Dado que hoje é "segunda-feira"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Virado a Paulista"

    Cenario: Hoje é dia de Dobradinha

        Dado que hoje é "terça-feira"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Dobradinha"

    Cenario: Hoje é dia de Feijoada

        Dado que hoje é "quarta-feira"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Feijoada"

     Cenario: Hoje é dia de Massa

        Dado que hoje é "quinta-feira"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Massa"

     Cenario: Hoje é dia de Peixe

        Dado que hoje é "sexta-feira"
        Quando eu pergunto qual é o prato do dia
        Então a resposta deve ser "Peixe"