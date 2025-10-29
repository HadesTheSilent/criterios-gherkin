                  # language: pt
                  Funcionalidade: Configurar produto
                  Como cliente da EBAC-SHOP
                  Quero configurar meu produto de acordo com meu tamanho e gosto
                  E escolher a quantidade
                  Para depois inserir no carrinho

                  Contexto:
                  Dado que estou na página de configuração do produto

                  Esquema do Cenário: Configuração de produto
                  Quando eu configuro o produto com <cor>, <tamanho> e <quantidade>
                  Então o sistema deverá exibir <mensagem>

                  Exemplos:
                  | cor   | tamanho | quantidade | mensagem                                |
                  | vazio | M       | 1          | "Seleções obrigatórias não preenchidas" |
                  | Azul  | vazio   | 1          | "Seleções obrigatórias não preenchidas" |
                  | Azul  | M       | vazio      | "Seleções obrigatórias não preenchidas" |
                  | Azul  | M       | 11         | "Máximo 10 produtos por venda"          |
                  | Azul  | M       | 10         | "Produto adicionado ao carrinho"        |

Cenário: Limpar configurações
Dado que eu selecionei cor, tamanho e quantidade
Quando eu clico no botão "limpar"
Então devo voltar ao estado original
