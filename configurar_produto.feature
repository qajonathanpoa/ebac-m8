Feature: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Para depois inserir no carrinho

    Background:
        Given que estou na página de configuração de produto

    Scenario: Seleções obrigatórias
        When eu seleciono cor, tamanho e quantidade
        Then o sistema deve permitir prosseguir para o carrinho

    Scenario: Limite de quantidade por venda
        When eu seleciono 11 produtos
        Then o sistema deve exibir uma mensagem de erro
        And não deve permitir adicionar ao carrinho

    Scenario: Botão limpar
        When eu clico no botão "limpar"
        Then o sistema deve retornar ao estado original
