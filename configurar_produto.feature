#language: pt
Funcionalidade: Configurar produto

  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Fundo:
    Dado que estou na página de configuração do produto

  Cenário: Seleções obrigatórias - cor não selecionada
    Quando eu tento inserir no carrinho sem selecionar a cor
    Então deve exibir mensagem de erro "Seleções obrigatórias não preenchidas"

  Cenário: Seleções obrigatórias - tamanho não selecionado
    Quando eu tento inserir no carrinho sem selecionar o tamanho
    Então deve exibir mensagem de erro "Seleções obrigatórias não preenchidas"

  Cenário: Seleções obrigatórias - quantidade não selecionada
    Quando eu tento inserir no carrinho sem selecionar a quantidade
    Então deve exibir mensagem de erro "Seleções obrigatórias não preenchidas"

  Cenário: Limite de produtos por venda
    Quando eu seleciono uma quantidade maior que 10
    Então deve exibir mensagem "Máximo 10 produtos por venda"

  Cenário: Limpar configurações
    Dado que eu selecionei cor, tamanho e quantidade
    Quando eu clico no botão "limpar"
    Então deve voltar ao estado original