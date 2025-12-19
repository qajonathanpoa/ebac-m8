Funcionalidade: Login na plataforma
    Como cliente da EBAC-SHOP
    Quero fazer login na plataforma
    Para visualizar meus pedidos

    Contexto:
        Dado que estou na página de login

    Cenário: Login válido
        Quando eu insiro usuário e senha válidos
        Então o sistema deve direcionar para a tela de checkout

    Cenário: Login inválido
        Quando eu insiro credenciais inválidas
        Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"
