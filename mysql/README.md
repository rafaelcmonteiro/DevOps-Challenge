# Banco de Dados MySQL

## Instruções

Entregaremos pronto um arquivo do Docker Compose para subir o banco de dados MySQL para você ter mais tempo para focar nos demais itens do desafio.

## Variáveis de ambiente

`SERVICE_PORT` = porta do servidor

`MYSQL_HOST` = database hostname

`MYSQL_USER` = usuario da database

`MYSQL_PASSWORD` = senha

`MYSQL_DB` = nome da db

## Bugs/melhorias encontrados durante o desafio

### Melhorias no mysql file

Dentro do script seed.sql foram encontradas duas redundancias
- O script tenta recriar o usuário backend, sendo que ele foi configurado na criação do container. O melhor seria cria-lo caso não tenha sido criado ainda, utilizando o `CREATE USER IF NOT EXISTS`.
- Não é necessário utilizar o comando `flush privilegies` já que a criação do privilégio foi feita via `GRANT`, o comando `flush`
      só é necessário quando utilizamos os comandos delete, insert, update.
- Foi necessário subir a quantidade de caracteres que as duas colunas da tabela `preferences` aceita.
