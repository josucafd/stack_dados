# Descrever o propósito da Stack

# Execute o Script

Execute o script definicoes.sh para criar as pastas necessárias e baixar os projetos

# Instalar o docker

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

# Pós Instalação Docker
sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Instalação Modo Rootless

https://docs.docker.com/engine/security/rootless/

# Configurar o Daemon.json

Esta configuração foi necessário, por o ip 172.17. por algum motivo estava gerando conflitos com a rede local
{
  "bip": "10.1.1.1/24",
  "default-address-pools": [
    { "base": "10.1.64.0/18", "size": 24 }
  ]
}
