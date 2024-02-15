## Propósito da Stack

Este repositório, tem como objetivo, reunir algumas das principais tecnologias na área de Dados utilizando Docker

## Projetos Listados

- [Apache Airflow](https://airflow.apache.org/) - Orquestrador de Dados

- [Apache Hop](https://hop.apache.org/) - ETL

- [Metabase](https://www.metabase.com/) - DataViz

- [Postgres](https://www.postgresql.org/) - DataBase

- [Docker](https://docs.docker.com/) - Infra

- [Docker Hub](https://hub.docker.com/) - Repositório de Imagens

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


### Extras

Em breve, vou adicionar ferramentas como:

- [Minio](https://min.io/) -> Storage com Protocolo S3
- [Dremio](https://www.dremio.com/) -> SQL Engine para otimizar consultas SQL
- [Airbyte](https://airbyte.com/) -> Orquestrador
- [Dagster](https://dagster.io/ ) -> Orquestrador
- [mage](https://www.mage.ai/) -> Orquestrador
- [dtb](https://www.getdbt.com/) -> Integração e Tranformação de Dados
- [Apache Superset](https://superset.apache.org/) Superset -> DataViz
- [OpenMetadata](https://open-metadata.org/) -> Catalogo de Dados

<br>
Avaliar

- [Apache Doris](https://doris.apache.org/) - Banco de dados Real-Time
- [Apache Kylin](https://kylin.apache.org/) - Banco de dados Real-Time
- [Apache Druid](https://druid.apache.org/) - Banco de dados Real-Time
- [Dezebium](https://debezium.io/) -> Monitora mudanças no banco de dados a nível de linha
- [Trino](https://trino.io/) -> SQL Engine para otimizar consultas SQL 
- [Apache Kafka](https://kafka.apache.org/) -> Mensageria
- [Apache Spark](https://spark.apache.org/) -> Engine de processamento de alto volume de dados
- [Kubernets](https://kubernetes.io/pt-br/) -> Orquestrador de Containers
- [Git](https://git-scm.com/doc) -> Versionamento de Códigos

.... Ufa ....
