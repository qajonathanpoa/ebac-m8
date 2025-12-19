Funcionalidade: Cadastro no checkout
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Contexto:
        Dado que estou na página de checkout

    Esquema do Cenário: Cadastro com diferentes combinações de dados
        Quando eu insiro <nome>, <email>, <telefone>
        Então o sistema deve validar os campos obrigatórios
        E deve exibir <mensagem>

        Exemplos:
            | nome        | email           | telefone    | mensagem                              |
            | João Silva  | joao@email.com  | 11999999999 | Cadastro realizado com sucesso        |
            | Maria Souza | maria@email     | 11888888888 | Formato de e-mail inválido            |
            | Pedro Lima  | pedro@email.com |             | Campos obrigatórios não preenchidos   |

    Cenário: Cadastro com campos vazios
        Quando eu tento cadastrar sem preencher os campos obrigatórios
        Então o sistema deve exibir uma mensagem de alerta
