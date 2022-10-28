
# Portfólio - Projeto To-Do List (API)

Sistema API para o projeto de To-Do List.

## Sobre o projeto

Para este projeto utilizei o ASP.Net Core 3.1.

## Banco de dados

Este projeto foi desenvolvido para utilizar uma conexão com um banco de dados PostgreSQL, para configurar o banco de dados, utilize o script que esta na pasta database. 

Este script (portfolio-todo-list.sql) poderá ser utilizado para criar o banco de dados com todas as tabelas do projeto e com alguns registros fictícios.

As configurações utilizadas para o desenvolvimento desse projeto foram:

- Versão 11.11 do PostgreSQL

- Utilizado o gerenciador pgAdmin 4

Caso não consiga utilizar o script para criar o banco de dados, abra a solução da aplicação e tente utilizar a opção de "Migration" no Visual Studio Community 2019:

No Visual Studio, acesse a opção:

```bash
   Tools > NuGet Package Manager > Package Manager Console
```

Em seguida, adicione uma nova migração:

```bash
   Add-Migration NomeDaMigration -Context Context
```
Após adicionar, rode o comando abaixo para criar o banco:

```bash
   Update-database -Context Context
```

### Configurando a string de conexão com o banco

Após criar o seu banco de dados local, é necessário configurar a string de conexão com o seu banco para que a aplicação funcione.

Acesse o arquivo "appsettings.json" que está na pasta raiz do projeto:

```bash
   C:\portfolio-todo-list\ToDoListApi\ToDoListApi\appsettings.json
```

Mude a string de acordo com a sua configuração local, caso esteja em um ambiente que a porta do PostgreSQL está para 5432, basta apenas mudar o parâmetro "Password" indicado na imagem:

![Logo](https://i.ibb.co/q19t1cr/api-string.png)

_Observação: os parâmetros User Id e Password são respectivamente o usuário e senha do seu PostgreSql._ 

## Rodando os projeto

Para rodar o projeto, abra o cmd e navegue até a pasta do projeto Api.
Exemplo:

```bash
   cd C:\portfolio-todo-list-api\api\ToDoListApi
```

Dentro da pasta, rode o seguinte comando:

```bash
  dotnet run
```

Após rodar o comando, a API estará funcionando em:

```bash
  https://localhost:5000
```
