# Receita basica para instalação dos containers no kubernetes

## MYSQL helm chart ou RDS

### RDS

É possível subir um rds, utilizando as receitas terraforms contidas dentro do `iac/terraform/dev/mysql`, isso te dará um banco de dados para suprir a necessidade desse deploy. Após isso é necessário editar o secret, colocando as credencais do banco.

### MYSQL helm chart

Também esta disponível em helm-chart um chart do mysql, ele esta configurado com algumas informações basicas, ele é basicamente igual ao que esta no docker-compose.

### kubectl

Após configurar o banco é só rodar o comando

```
    kubectl apply -f . -n namespace
```

### TODO

- Não foi possível, garantir a conexão entre os pods, acredito que isso tenha haver com o fato de estar utilizando o `kind` para realizar os testes. Por isso é necessário fazer o deploy de um eks ou recurso similar para realizar os testes.
- Necessário criar uma rota para a internet utilizando ingress.

