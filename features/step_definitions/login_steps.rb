Quando(/^efetuo o login com os dados do "([^"]*)"$/) do |credential|
  @sc = LoginEmail.new
  @credentials = CREDENTIALS[credential.tr(' ', '_').to_sym]

  @sc.acess_menu
  @sc.enter_email(@credentials[:email])
  @sc.enter_pass(@credentials[:password])
  @sc.confirm_login
end

Quando(/^efetuo o login usando cpf do "([^"]*)"$/) do |credential|
  @sc = LoginEmail.new
  @credentials = CREDENTIALS[credential.tr(' ', '_').to_sym]

  @sc.acess_menu
  @sc.enter_email(@credentials[:cpf])
  @sc.enter_pass(@credentials[:password])
  @sc.confirm_login
end

Então(/^vejo a tela de usuário logado$/) do
  expect(@sc.validate_login).not_to eq('OLÁ, VISITANTE')
  expect(@sc.validate_login).to eq("OLÁ, #{@credentials[:name]}".upcase)
end

Dado(/^que estou logado no sistema$/) do
  steps %{
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo o login com os dados do "comprador"
    Então vejo a tela de usuário logado
  }
end

Quando(/^encerro minha sessão$/) do
  2.times{ swipe_vertical }
  @sc.end_session
end

Então(/^sou direcionado para a home$/) do
  steps %{
    Dado que eu estou na home sem ter realizado o login
  }
  sleep 5
end

Quando(/^efetuo o login usando os dados dos "([^"]*)"$/) do |credential|
  @sc = LoginEmail.new
  @credentials = CREDENTIALS[credential.tr(' ', '_').to_sym]

  @sc.acess_menu
  @sc.enter_email(@credentials[:email])
  @sc.enter_pass(@credentials[:password])
  @sc.confirm_login
end

Então(/^vejo a menssagem de erro de acesso$/) do
  @sc.validate_login_error
end
