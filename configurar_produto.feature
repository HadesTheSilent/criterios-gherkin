# language: pt
Funcionalidade: Configurar produto
  Como cliente da EBAC-SHOP
  Quero configurar meu produto de acordo com meu tamanho e gosto
  E escolher a quantidade
  Para depois inserir no carrinho

  Fundo:
    Dado que estou na página de configuração do produto

  Esquema do Cenário: Configuração de produto
    Quando eu configuro o produto com <cor>, <tamanho> e <quantidade>
    Então <resultado>

    Exemplos:
      | cor      | tamanho | quantidade | resultado                                                    |
      | vazio    | M       | 1         | deve exibir mensagem de erro "Seleções obrigatórias não preenchidas" |
      | Azul     | vazio   | 1         | deve exibir mensagem de erro "Seleções obrigatórias não preenchidas" |
      | Azul     | M       | vazio     | deve exibir mensagem de erro "Seleções obrigatórias não preenchidas" |
      | Azul     | M       | 11        | deve exibir mensagem "Máximo 10 produtos por venda"          |
      | Azul     | M       | 10        | deve adicionar o produto ao carrinho                         |

  Cenário: Limpar configurações
    Dado que eu selecionei cor, tamanho e quantidade
    Quando eu clico no botão "limpar"
    Então deve voltar ao estado original
