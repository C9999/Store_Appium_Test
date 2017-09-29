# language: pt
@logins
Funcionalidade: Logar no sistema

  Para realizar o login o comprador deve possuir um cadastro na Netshoes. Também é possível logar usando uma conta do Facebook.
  O login poder ser feito usando CPF ou email, juntamente com uma senha válida. O login não deve permitir sucesso com apenas um dos campos preenchido.
  O campo de senha deve conter uma máscara que ofusca a senha ao digitar. Mas que pode ficar visível ativando o "olho mágico".

  <Critérios da senha a definir>
  Caso o comprador erre a senha 3 vezes a senha será bloqueada.

  O botão "Entrar" faz a validação dos campos de email e senha
  Caso eles estejam preenchidos com dados inválidos deve ser exibido um alerta de: 

  "E-mail ou CPF inválido"
  "Senha inválida"

  Existe também a opção de sair do sistema, para que o usuário após realizar suas compras possa se sentir seguro para fechar o aplicativo.
  Ou que seja possível trocar de usuário.
  Usando essa função o login do usuário é encerrado e o aplicativo retorna para o início.

  História de usuário: 
  Sendo o usuário do aplicativo
  Posso efetuar o login
  Para que seja possível finalizar compras usando minhas informações

  @login_email
  Cenário: Logar no sistema usando email e senha
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo o login com os dados do "comprador"
    Então vejo a tela de usuário logado

  @login_cpf
  Cenário: Logar no sistema usando cpf e senha
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo o login usando cpf do "comprador"
    Então vejo a tela de usuário logado

  @logout
  Cenário: Encerrar sessão do usuário no sistema
    Dado que estou logado no sistema
    Quando encerro minha sessão
    Então sou direcionado para a home 

  @login_errado
    Cenário: Tentar se logar no sistema usando dados inválidos
    Dado que eu estou na home sem ter realizado o login
    Quando efetuo o login usando os dados dos "comprador errado"
    Então vejo a menssagem de erro de acesso