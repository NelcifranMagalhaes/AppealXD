# AppealXD
> Adicione Eventos.


Uma aplicação web para Cadastro de Eventos.


## Installation

Windows & Linux:

```sh
git clone or download the project
```


## Development setup

Ao baixar , você deve rodar esses comandos para iniciar,fiz um seed com 3 usuários ,3 Cadastros de dados pessoais e 40 Eventos distribuidos entre os Usuários

```sh
Usuários do seed
sasuke@gmail.com
deidara@gmail.com
itachi@gmail.com
Todos com a senha "123456"
```

```sh
bundle install
rails db:create
rails db:migrate
rails db:seed #optional
rails s
```
##Funcionalidades
* Cadastro de Usuários
* Cadastro de Dados Pessoais do Usuário, cada usuário pode ter apenas um.
* Cadastro de eventos
* Cada usuário pode ter um ou mais eventos
* Validação de Usuários, Dados pessoais e eventos
* Teste de Models com Rspec

Lembre-se de deletar o banco , antes de rodar o seed .

## Used Technologies

* Usei Rails como framework web.
* No front end, usei [BulmaCss](https://bulma.io/)
* No back end Ruby
* Usei algumas gems, todos elas tem link no gem file, entre elas, devise para autenticação e kaminari * para paginação
* PostgreSQL

## Meta
Nelcifran Magalhaes – [Linkedin](https://www.linkedin.com/in/nelcifranpires/
) – nelcifranpires@gmail.com

