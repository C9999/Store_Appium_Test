# language: pt
@buscas
Funcionalidade: Busca de produto
  
  A busca por produtos retorna uma listagem de produtos semelhantes ao item buscado. 
  Ou seja, caso o comprador busque por um produto especifico o app vai retornar  além dele sugestões parecidas.
  Essa busca pode ser feita por: 
  - nome do produto
  - categoria
  - marca ou fabricante

  Na listagem de produtos deve ser exibidas as seguintes informações: 
  - nome do produto
  - valor do produto
  - porcentagem de desconto e valor sem desconto (opcional se houver)
  - se o item fazer parte de coleção (opcional se houver)

  A listagem de produto não é separada por "páginas", quando o comprador for descento a tela o app deve carregar o restante dos produtos
  Através dessa lista é possível adicionar o produto ao carrinho, ou apenas visualizar os seus detalhes.
  Se o comprador entrar no detalhe de um produto e voltar, a listagem deve permanecer no ponto onde estava
  
  O resultado da lista de produtos encontrados pode ser ordenada através das seguintes opções: 
  - mais vendidos
  - lançamentos
  - ofertas
  - maior preço
  - menor preço
  Essa ordenação pode ser limpa e todos os produtos da busca inicial voltam a ser exibidos na ordem original.
  
  O resultado da lista também pode ser filtrada através das seguintes opções: 
  - genêro
  - marca 
  - tamanho
  - preço
  - departamento 
  - modalidade
  Caso algum filtro seja usado, os produtos que não se enquandrem nele não vão ser exibidos.
  É possível usar mais de um filtro de uma vez.
  Esse filtro pode ser limpo e todos os produtos da busca inicial voltam a ser exibidos.

  História de usuário: 
  Sendo o usuário do aplicativo
  Posso buscar por um produto na loja
  Para que possa ver uma lista de produtos semelhantes

  @busca_produto
  Cenário: Buscar por produto com usuário não logado
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo a busca do produto "tenis adidas"
    Então vejo uma listagem de produtos semelhantes

  Cenário: Buscar por produto com usuário logado
    Dado que realizei já realizei o login
    Quando efetuo a busca do produto "tenis nike"
    Então vejo uma listagem de produtos semelhantes  

  Cenário: Ordenar a busca de produtos
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo a busca do produto "tenis adidas"
    E ordeno a exibição 
    Então vejo uma listagem de produtos de forma ordenada