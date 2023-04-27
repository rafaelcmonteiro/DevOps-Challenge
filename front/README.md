# front
## instruções
- ter `node.js v8+` instalado
- instalar as dependências com `npm install`
- rodar com `node index.js`


## variáveis de ambiente
`SERVICE_PORT` = porta do servidor

`BACKEND_HOST` = hostname da aplicação back

`BACKEND_PORT` = porta da aplicação back

## Bugs encontrados durante o desafio

Foi feita apenas uma alteração na linha 25 do código index.js
- Anteriormente apontava para `localhost`, porém reparei que no docker-compose é necessário que seja o nome do container, tendo isso em mente adicionei a variável descrita na seção anterior `BACKEND_HOST`.