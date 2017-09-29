## Aplicativo Android

O projeto consiste em um aplicativo e-commerce, onde é possível realizar pesquisas de produtos e realizar compras de mercadorias.

Arquivo .apk em Loja_Virtual_Appium/features/support/netshoes.apk

## Projeto de testes

Nesse projeto foi usado BDD para a escrita das features e compartamentos do aplicativo. 
Ruby + Appium para o desenvolvimento dos steps de testes.

## Instalação projeto de testes e suas dependências

### > Gemfile

Esse projeto possui um Gemfile com as dependências usados para rodar os testes. Primeira passo é fazer a instalação a partir dele: 
```
$ bundle install
```

### > Appium

Os scripts de testes estão usando o framework Appium com Ruby, é necessário instalar seu servidor. Para fazer o download e efetuar a instalação acesso o site oficial: 
http://appium.io/

Ou através de linha de comando:
```
$ gem install appium_lib
```

## Como rodar os scripts de testes via terminal 

Primeiro tenha um device Android conectado via USB, ou um emulador rodando na máquina

Nesse projeto temos um comando que já inicia o emulador Android:
```
$ rake start_emulator['emulator_name']
```

Iniciar servidor Appium:
```
$ appium
```

Rodar features de testes:
```
$ cucumber 
```

Para gerar relatórios .html com o resultado dos testes adicione os parametros abaixo:
```
$ cucumber --format html --out report.html --format pretty
```

Caso não seja passado nenhum parametro, o cucumber vai rodar todas funcionalidades que estão na pasta 'features'.
Podemos passar alguns parametros para que seja executada apenas uma funcionalidade:
```
$ cucumber -t @tag
```

## Tags

Existem algumas tags que já estão criadas para facilitar a execução dos testes.

Tags utilizadas:
```
@buscas - Tag reuni todas os tipos de busca por produtos
@busca_produto - Busca por um produto específico 
@carrinho - Tag com todas as funcionalidades de checkout do carrinho de compras
@add_carrinho - Adiciona um produto específico ao carrinho
@logins - Tag com todos os cenários da Feature de Login
@login_email - Realiza Login usando Email válido
@login_cpf - Realiza Login usando CPF válido
@logout - Encerra a sessão do usuário, independente do tipo de login usado
@login_errado - Tenta efetuar um acesso com credenciais inválidos
```

## Outras dependências opicionais 
```
Rubocop - Para análise de código e sintaxe Ruby
Pry - Degug em tempo real 
Rake - Tasks automatizadas do projeto, exemplo: iniciar emulador Android
Yard Cucumber - Usado para gerar relatórios .html das features e tags usadas
```

## Steps e Metôdos genéricos

Alguns metôdos são usados em muitos cenários de testes, por conter o mesmo trecho de código e para evitar a repetição desnecessária decide inclui-los em um arquivo único, onde todas as partes do projeto podem acessa-los

### > gerenal_methods.rb
```
touch_popup - click no popup de avisos
pop_shopping_cat - click no popup do carrinho e direciona ao checkout
list_itens(i) - lista os itens buscados, onde 'i' é a quantidade que será analisada
swipe_vertical - metôdo usado para descer a tela e exibir o restante dos elementos
send_enter - submit no momento da busca de produtos
```

Usando esse mesmo argumento, também criei um arquivo único para centralizar os steps mais comuns 

### > general_steps.rb
```
Dado(/^que eu estou na home sem ter realizado o login$/) 
```