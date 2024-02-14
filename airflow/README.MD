Documentação Oficial

https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html#setting-the-right-airflow-user

antes de iniciar, é necessário seguir os passos abaixo conforme documentação

criar as referidas pastas
mkdir -p ./dags ./logs ./plugins ./config

cria o arquivo .env com a variavel AIRFLOW_UID com o mesmo valor do ID do usuário local 
echo -e "AIRFLOW_UID=$(id -u)" > .env

O intervalo padrão do Scheduller para ler as pasta DAGS é de 300s ou 5 Minutos
dag_dir_list_interval 