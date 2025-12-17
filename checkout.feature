Feature: Cadastro no checkout
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background:
        Given que estou na página de checkout

    Scenario Outline: Cadastro com diferentes combinações de dados
        When eu insiro <nome>, <email>, <telefone>
        Then o sistema deve validar os campos obrigatórios
        And exibir <mensagem>

        Examples:
            | nome        | email           | telefone    | mensagem                              |
            | João Silva  | joao@email.com  | 11999999999 | "Cadastro realizado com sucesso"      |
            | Maria Souza | maria@email     | 11888888888 | "Formato de e-mail inválido"          |
            | Pedro Lima  | pedro@email.com |             | "Campos obrigatórios não preenchidos" |

    Scenario: Cadastro com campos vazios
        When eu tento cadastrar sem preencher os campos obrigatórios
        Then o sistema deve exibir mensagem de alerta
