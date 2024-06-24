# Usa a imagem base Apache Hop versão 2.8.0
FROM apache/hop:2.8.0

# Muda para o usuário root para instalar dependências e configurar permissões
USER root

# Instala o Git
RUN apk add --no-cache git

# Altera a propriedade do diretório /opt para o usuário hop e grupo hop
RUN chown -R hop:hop /opt/projetos

# Volta para o usuário hop
USER hop

# Define variáveis de ambiente para os drivers Oracle e Firebird
ENV URL_ORACLE="http://nexus.saas.hand-china.com/content/repositories/rdc/com/oracle/ojdbc7/12.1.0.2/ojdbc7-12.1.0.2.jar"
ENV URL_FIREBIRD="https://github.com/FirebirdSQL/jaybird/releases/download/v5.0.3/jaybird-5.0.3.java11.zip"

# Baixa e instala o driver Oracle
RUN wget -q $URL_ORACLE -O /opt/hop/plugins/databases/oracle/lib/ojdbc7-12.1.0.2.jar

# Baixa e instala o driver Firebird
RUN wget -q $URL_FIREBIRD -O /tmp/jaybird.zip \
    && unzip /tmp/jaybird.zip -d /tmp/jaybird \
    && cp /tmp/jaybird/jaybird-5.0.3.java11.jar /opt/hop/plugins/databases/firebird/lib/ \
    && rm -rf /tmp/jaybird.*

# Define opções para o Apache Hop como variáveis de ambiente
ENV HOP_OPTIONS="-Xmx4096m -Dfile.encoding=UTF8"

# Define o usuário e senha do servidor Hop como variáveis de ambiente
ENV HOP_SERVER_USER=cluster
ENV HOP_SERVER_PASSWORD=cluster
