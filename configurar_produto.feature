Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Para depois inserir no carrinho

    Background:
        Given que estou na página de configuração de produto

    Scenario: Configuração válida permite prosseguir
        When eu seleciono uma cor, um tamanho e uma quantidade entre 1 e 10
        Then o sistema deve permitir prosseguir para o carrinho

    Scenario: Seleções obrigatórias bloqueiam avanço
        When eu deixo de selecionar cor, tamanho ou quantidade
        Then o sistema deve impedir prosseguir para o carrinho
        And deve exibir uma mensagem indicando os campos obrigatórios

    Scenario: Limite de quantidade por venda
        When eu seleciono uma quantidade maior que 10
        Then o sistema deve exibir uma mensagem de erro
        And não deve permitir adicionar ao carrinho

    Scenario: Botão limpar restaura estado original
        When eu clico no botão "limpar"
        Then o sistema deve retornar ao estado original
        And deve remover cor, tamanho e quantidade selecionados
