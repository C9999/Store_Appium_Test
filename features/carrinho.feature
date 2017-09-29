# language: pt
@carrinho
Funcionalidade: Carrinho de compras

  Carrinho de compras é o passo necessário antes de finalizar uma compra, nele existem todos itens escolhidos durante o fluxo.
  Dentro dele é a lista com os detalhes dos produtos, quantidade, SKU e pontos gerados, valor, possíveis descontos.
  É possível visualizar o valor total dos itens e adicionar o valor do frete. 
  Também permite: 
    - Adicionar mais itens
    - Remover itens
    - Alterar quantidade de itens
    - Incluir embalagem para presente (não obrigatório)
    - Alterar frete e recalcular o valor/prazo de entrega
  Após escolher essas opções o comprador pode fechar a compra e processeguir para o pagamento. 
    
  História de usuário:
  Sendo o usuário do aplicativo
  Posso adicionar produtos ao carrinho
  Para que seja possível saber o valor total da compra antes de fecha-la.

  @add_carrinho
  Cenário: Adicionar primeiro produto buscado ao carrinho
    Dado que fiz a busca por algum produto
    E escolhi o item desejeado na lista
    Quando escolho o SKU
    E adiciono ao carrinho
    Então o carrinho de compras é atualizado

  Cenário: Remover produtos do carrinho
    Dado que eu já tenho produtos no carrinho
    Quando esvazio o carrinho
    Então visualizo o carrinho de compras vazio