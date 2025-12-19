Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto
    Para depois inserir no carrinho

    Contexto:
        Dado que estou na página de configuração de produto

    Cenário: Configuração válida permite prosseguir
        Quando eu seleciono uma cor, um tamanho e uma quantidade entre 1 e 10
        Então o sistema deve permitir prosseguir para o carrinho

    Cenário: Seleções obrigatórias bloqueiam avanço
        Quando eu deixo de selecionar cor, tamanho ou quantidade
        Então o sistema deve impedir prosseguir para o carrinho
        E deve exibir uma mensagem indicando os campos obrigatórios

    Cenário: Limite de quantidade por venda
        Quando eu seleciono uma quantidade maior que 10
        Então o sistema deve exibir uma mensagem de erro
        E não deve permitir adicionar ao carrinho

    Cenário: Botão limpar restaura estado original
        Quando eu clico no botão "limpar"
        Então o sistema deve retornar ao estado original
        E deve remover cor, tamanho e quantidade selecionados
