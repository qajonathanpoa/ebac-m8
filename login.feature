Feature: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer login na plataforma
    Para visualizar meus pedidos

    Background:
        Given que estou na página de login

    Scenario: Login válido
        When eu insiro usuário e senha válidos
        Then o sistema deve direcionar para a tela de checkout

    Scenario: Login inválido
        When eu insiro credenciais inválidas
        Then o sistema deve exibir a mensagem "Usuário ou senha inválidos"
