# Exercícios para Recrutamento de SRE / DevOps - Neuralmed

Olá! Esse é um exercício que usamos para avaliar conhecimentos e habilidades no recrutamento na Neuralmed. Os componentes aqui descritos são semelhantes aos que usamos em nossos produtos. Faça-o seguindo este princípio - Máxima eficiência com o mínimo de esforço. Sinta-se a vontade em tirar qualquer dúvida de qualquer tipo antes ou durante o desafio.

**NOTA:** Não realizar pull request para este repositório. No final do documento há instruções de como enviar os resultados para nós.

## Instruções

Neste repositório, você encontrará duas aplicações (front/back) em node.js e um arquivo seed para a base MySQL.

3 pastas:

- front: contém uma página html e um index.js os quais se comunicam com back para enviar as preferências.
- back: salva preferências e o IP real do requisitante vindas do front no banco de dados.
- mysql: contém o arquivo de inicialização para criação da base.

**Podem haver bugs nas aplicações e/ou estrutura que necessitam correção. Caso tenha conhecimento para resolução, corrigir e detalhar o bug e correção.**

## Objetivos

O objetivo é provisionar as aplicações e banco MySQL de forma distribuída e automatizada, em ambiente cloud, preferencialmente em contêineres. Alguns objetivos são obrigatórios e outros desejáveis. Inclua as instruções para rodar seu script neste README e em cada um dos componentes da solução e comente seu código para demonstrar sua forma de pensamento.

- A aplicação front-end deverá ser accessível de qualquer lugar;
- A aplicação back-end deverá se comunicar somente com front-end e com o banco MySQL;
- O banco mysql deve se comunicar somente com o back-end;
- Os ambientes devem ser resilientes a ponto de se recuperarem de uma falha fatal na aplicação.

### Obrigatório

- [ ] Dockerfile para front-end;
- [ ] Dockerfile para back-end;
- [ ] Docker Compose para subir localmente/VM;
- [ ] Imagens Docker enviadas para o Docker Hub;
- [ ] Criação de um README.md para cada aplicação e banco de dados descrevendo como subir e rodar toda a stack;
- [ ] Controle de versão de todos os componentes dessa solução;
- [ ] Diagrama documental da solução - use a ferramenta que dominar para isso;
- [ ] Manifesto de deployment no Kubernetes.

### Desejável

- [ ] Manifestos Kubernetes do front-end e back-end - deployment, service, ingress, secrets e configmap;
- [ ] Script para deploy dessa solução - Terraform, Ansible, SDKs, GitHub, etc;
- [ ] Criar um To Do com pontos de melhoria nessa solução (exemplo: maior segurança no componente xyz, usar Terraform para subir cluster Kubernetes);
- [ ] Diagrama de uma arquitetura ideal para essas aplicações, na nuvem, pensando em escalabilidade, performance e confiabilidade. Use a Criatividade, sua Experiência e seu Conhecimento para montar a melhor infraestrutura com as melhores soluções/ferramentas para aumentar a confiabilidade do produto final. Vale pontos direto na média geral ;-)

## O que iremos avaliar

- Itens obrigatórios;
- Melhores práticas;
- Organização;
- Conhecimento e Experiência em arquitetura em nuvem;
- Criatividade.

## Resultados

Aceitaremos um patch deste repositório com suas alterações locais. Para isso, siga as instruções abaixo:

1. Clone o repositório localmente eu seu computador:

    `git clone https://github.com/neuralmed/devops-challenge.git`

2. Crie sua solução modificando e/ou criandos novos arquivos.

3. Confira as alterações locais

    `git status`

4. Adicione arquivos novos, caso os tenha criado

    `git add .`

5. Commit local das suas modificações

    `git commit -am "commit message"`

6. Gere um arquivo .patch com suas modificações locais

    `git format-patch origin/master --stdout > git.patch`

7. Responda o e-mail anexando o git.patch. Mande compactado ou compartilhado em forma de link para download.

8. Coloque no e-mail qualquer link que desejar e que nos faça conhecer melhor suas habilidades.

------------