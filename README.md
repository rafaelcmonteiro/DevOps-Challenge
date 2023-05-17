# Como subir a infraestrutura

## Via docker-compose

Através do Makefile é possível subir esse docker-compose

```
    make compose
```

Dentro do docker-compose as imagens serão criadas durante a execução do compose.

## Via kubernetes

Para que a aplicação rode 100% no kubernetes, é necessário que ele esteja em algum cloud provider.

- Necessário criar um banco de dados na cloud, caso pretenda utilizar a AWS, utilize o terraform em `iac/terraform/dev/mysql`
- Após subir o rds, é necessário subir a configuração do banco. Rode o ansible em `iac/ansible`, se possível utilize o Makefile. Em `iac/ansible/roles/vars` altere as credenciais do banco para as que aparecem no console. 
- Instale o deployment utilizando kubectl.

## Via helm chart

Não consegui finalizar a parte do helm chart, então ele não esta 100% para ir pro kubernetes.