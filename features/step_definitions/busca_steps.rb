Dado(/^que realizei já realizei o login$/) do
  steps %{
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo o login com os dados do "comprador"
    Então vejo a tela de usuário logado
  }
end

Quando(/^efetuo a busca do produto "([^"]*)"$/) do |products|
  @sc = SearchProducts.new
  @products = PRODUCTS[products.tr(' ', '_').to_sym]
  
  @sc.search_menu
  @sc.product_search(@products[:name])  
end

Então(/^vejo uma listagem de produtos semelhantes$/) do
  @sc.result_list
end

E(/^ordeno a exibição$/) do
   @sc = SearchProducts.new
   @sc.order_list('Maior preço')
end

Então(/^vejo uma listagem de produtos de forma ordenada$/) do
  @sc = SearchProducts.new
  @sc.result_list
end
