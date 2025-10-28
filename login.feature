# language: pt
Funcionalidade: Login na plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login (autenticação) na plataforma
  Para visualizar meus pedidos

  Contexto:
    Dado que estou na página de login

  Cenário: Login com dados válidos
    Quando eu insiro dados válidos de usuário e senha
    Então devo ser direcionado para a tela de checkout

  Cenário: Login com dados inválidos
    Quando eu insiro um dos campos inválidos
    Então devo visualizar uma mensagem de alerta "Usuário ou senha inválidos"
