## Ansible Playbooks

Estrutura de arquivos Ansible Role, feito com base na documentação utilizando as melhores práticas.

## Sobre o código

O código é bem básico, sem muita loga envolvida. A ideia é que ele seja rodado no cloud shell ou em alguma máquina que esteja ligada a infraestrutura onde se encontra o banco mysql.

## Makefile

Através do makefile é possível rodar toda a alteração, ela por si só já faz a configuração do sistema e por fim roda o script sql no host determinado. A unica interação até o momento esta em colocar a senha do usuário root da maquina onde será rodado.

## TODO

Para melhorias do ansible

- Necessário colocar a senha do banco em um ansible vault ou pegar a variável por linha de comando, respeitando a interação do usuário com o Makefile.
- Seria necessário deixar a leitura dos arquivos `.sql` mais escalável, da maneira atual geraria redundancia de código caso novos scripts sql fossme alocados.
- Assim como os scripts `sql` seria possível deixar a estrutura como um todo mais escalável, para rodar scripts em outros bancos, não só o atual.