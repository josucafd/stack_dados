## Propósito da Stack

Este repositório, tem como objetivo, reunir algumas das principais tecnologias na área de Dados utilizando Docker

## Projetos Listados

- [Apache Airflow](https://airflow.apache.org/) - Orquestrador de Dados

- [Apache Hop](https://hop.apache.org/) - ETL

- [Metabase](https://www.metabase.com/) - DataViz

- [Postgres](https://www.postgresql.org/) - DataBase

- [Docker](https://docs.docker.com/) - Infra

<br>

**Em breve Mais Projetos**

<br>

# Instruções

### Instalar o Docker

```bash
# Faz o Dowload do Script de Instalação
curl -fsSL https://get.docker.com -o get-docker.sh

# Solicita a instalação
sudo sh ./get-docker.sh
```

<br>

### Pós-Instalação Docker

Por padrão, a utilização dos comandos **docker** precisam ser com o usuário **administrador**.

Para que você utilize o docker com um usuário convencional, siga os passos abaixo.

```bash
# Cria o grupo docker
sudo groupadd docker

# Adicionar o usuário local ao Grupo docker
sudo usermod -aG docker $USER

# Habilita o Serviço Docker
sudo systemctl enable docker.service

# Habilita o Serviço Containerd 
sudo systemctl enable containerd.service
```

### Docker RootLess

Para instalar o **docker** sem a necessidade do **usuário administrado**, [clique aqui](https://docs.docker.com/engine/security/rootless/)

<br>

### Observações

Esta configuração foi necessário, porque o ip 172.17.x.x utilizada pelo Docker, estava entrando em conflito com a rede interna.

A Solução é alterar a configuração da Rede do Docker.

Abaixo um exemplo.

Para fazer a configuração, crie ou edite o arquivo **daemon.json** em /etc/docker/daemon.json

````json
{
  "bip": "10.1.1.1/24",
  "default-address-pools": [
    { "base": "10.1.64.0/18", "size": 24 }
  ]
}
````

### Preparar o ambiente

Há dois scripts que preparam o ambiente.

**definicoes.sh** -> Editar conforme a necessidade para automatizar a criação de diretórios e arquivos que são utilizatos pelo projeto.

**repositorios_git.sh** -> Editar conforme a necessidade para automatizar o clone dos repositórios com os artefatos utilizados pelo projeto.
