# Usa a imagem base Apache Hop versão 2.8.0
FROM apache/hop:2.8.0

# Instala o Git e cria diretórios com permissões adequadas sem mudar de usuário

# Usamos root para criar o diretório e instalar o Git
USER root

# Instala o Git
RUN apk add --no-cache git

# Cria diretórios necessários para o Apache Hop
RUN mkdir -p /opt/projetos/hop_config /opt/projetos/hop_jdbc

# Baixa e instala o driver Firebird
RUN wget -q https://github.com/FirebirdSQL/jaybird/releases/download/v5.0.3/jaybird-5.0.3.java11.zip -O /tmp/jaybird.zip \
    && unzip /tmp/jaybird.zip -d /tmp/jaybird \
    && cp /tmp/jaybird/jaybird-5.0.3.java11.jar /opt/hop/plugins/databases/firebird/lib/ \
    && rm -rf /tmp/jaybird.*

# Define variáveis de ambiente para os diretórios de configuração e drivers JDBC
ENV HOP_CONFIG_FOLDER=/opt/projetos/hop_config
ENV HOP_SHARED_JDBC_FOLDER=/opt/projetos/hop_jdbc

# Volta para o usuário hop
USER hop

# Define opções para o Apache Hop como variáveis de ambiente
ENV HOP_OPTIONS="-Xmx4096m -Dfile.encoding=UTF8"

# Define o usuário e senha do servidor Hop como variáveis de ambiente
ENV HOP_SERVER_USER=cluster
ENV HOP_SERVER_PASSWORD=cluster
