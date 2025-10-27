#language: pt
Funcionalidade: Tela de cadastro - Checkout

  Como cliente da EBAC-SHOP
  Quero fazer concluir meu cadastro
  Para finalizar minha compra

  Fundo:
    Dado que estou na tela de cadastro

  Esquema do Cenário: Cadastro de usuário
    Quando eu preencho os campos obrigatórios com <tipo_de_dados>
    Então <resultado>

    Exemplos:
      | tipo_de_dados          | resultado                          |
      | dados válidos          | deve ser cadastrado com sucesso    |
      | e-mail com formato inválido | deve exibir mensagem de erro       |
      | campos vazios          | deve exibir mensagem de alerta     |