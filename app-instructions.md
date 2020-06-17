# App de Aprendizado
Vamos construir um blog. Cada um deverá criar um repositório no GitHub
e desenvolver o código nele

## Este blog precisa de:
- Cadastro (Login/SignUp) com usuário e senha
- Sessão (por JWT)
- Lista de usuários
- Lista de posts
- Form para adicionar posts
- Busca de posts e usuário
- Página do post
- Página do usuário

## Utilizar no Back
- Node (Typescript)
- Express
- Postgres (docker)
- JWT
- Não utilizar ORM (object relational model)
- Não utilizar classes (programação funcional)
- Jest (testes)
- Migração manual

## Utilizar no front
- Javascript
- React (create-react-app)
- Hooks
- Redux (thunk)
- Não utilizar classes


# Passos

## 1. Criar o banco de dados
O primeiro passo vai ser criar o banco de dados para o nosso app. Na pasta `sql`
existem as seguintes sub-pastas:
- migrations: Esse é o nome que se dá para operações que modificam a estrutura do
  banco de dados, ou seja, que realizam CREATE, ALTER ou DROP em tabelas. Existem vários
  modos de organizar isso, nós usaremos a ferramenta [flyway](https://flywaydb.org/documentation)
- fixture: São dados de teste. Usados pra testar o banco e aplicação posteriormente
- queries: Cada chamada de API em geral está relacionado à alguma interação com o banco de dados,
  que fundamentalmente é uma query. Assim, para cada chamada que será criada, será necessária uma query. No app final elas serão copiadas para o meio do código, mas por conveniência de
  desenvolvimento é útil manter um arquivo para cada uma nesta pasta

No readme da pasta sql tem mais instruções de como criar o banco 

## 2. Criar as tabelas e queries que serão utilizadas
As tabelas que deverão ser criadas são:
- users (já criei como exemplo)
- posts
- user_posts (relação entre as duas acima)

As queries são:
- get-user: para recuperar o login, já criei como exemplo
- get-post: retorna os dados de um post (assim como do usuário que o criou) para a página que mostrará o próprio
- get-users: para página que mostra todos os usuários (que podem ser considerados como bloggers)
- get-user-posts: todos os posts para um usuário
- get-posts: retorna os 10 posts mais novos
- search-posts: busca (utilizando LIKE) usuários e posts que batem com um termo (string)
- create-user: query utilizada no cadastro
- create-post: query utilizado para criar um post por um usuário
