# Portfólio - Projeto Cadastro de Clientes

Projeto demonstrativo com o objetivo de criar um sistema de cadastro de clientes com Asp.Net MVC 6.

## Banco de dados

Este projeto foi desenvolvido para utilizar uma conexão com um banco de dados SQL Server, para configurar o banco de dados, utilize o script que esta na pasta database. 

Este script (crudclientes.sql) poderá ser utilizado para criar o banco de dados com todas as tabelas do projeto e com alguns registros fictícios.

As configurações utilizadas para o desenvolvimento desse projeto foram:

- Versão 15 do SQL Server

- Utilizado o gerenciador Microsoft SQL Server Management Studio

Caso não consiga utilizar o script para criar o banco de dados, abra a solução da aplicação e tente utilizar a opção de "Migration" no Visual Studio Community 2022:

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

Para este projeto, não utilizei o arquivo "appsettings.json", porém aqui no meu perfil do GitHub existem outros repositórios meus que o utilizam.

```bash
   Altere no arquivo Program.cs
```

_Observação: os parâmetros User Id e Password são respectivamente o usuário e senha do seu PostgreSql._ 

## Rodando os projeto

Para rodar o projeto, abra o cmd e navegue até a pasta do projeto CrudApi.
Exemplo:

```bash
   cd C:\portfolio-cadastro-clientes\CrudClientes\CrudClientes
```

Dentro da pasta, rode o seguinte comando:

```bash
  dotnet run
```

Após rodar o comando, acesse o link abaixo em seu navegador (confirme na saída do terminal):

```bash
  https://localhost:5062
```

Após isso será apresentado a aplicação:

![Logo](https://i.postimg.cc/MTDPvTrC/Screenshot-1.png)

![Logo](https://i.postimg.cc/G2rgLYzP/Screenshot-3.png)

