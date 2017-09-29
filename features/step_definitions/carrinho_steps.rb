Dado(/^que fiz a busca por algum produto$/) do
  steps %{
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo a busca do produto "tenis adidas"
    Então vejo uma listagem de produtos semelhantes
  }
  wait { touch_popup }
end

E(/^escolhi o item desejeado na lista$/) do
  @sc = SearchProducts.new
  @sc.select_product(0)
end

Quando(/^escolho o SKU$/) do
  @sc = CartCheckout.new
  @sc.select_sku(2)
end

E(/^adiciono ao carrinho$/) do
  @sc = CartCheckout.new
  @sc.add_prod_cart
end

Então(/^o carrinho de compras é atualizado$/) do
 @sc = CartCheckout.new
 result = @sc.checkout_update
 expect(result).to eq('Carrinho')
end

Dado(/^que eu já tenho produtos no carrinho$/) do
  steps %{
    Dado que fiz a busca por algum produto
    E escolhi o item desejeado na lista
    Quando escolho o SKU
    E adiciono ao carrinho
  }
end

Quando(/^esvazio o carrinho$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Então(/^visualizo o carrinho de compras vazio$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
