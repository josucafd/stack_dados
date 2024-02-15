# Apache Airflow

Para uma Stack de dados é necessário uma ferramenta para Orquestrar seus pipelines.

Neste caso utilizaremos o **Apache Airflow** como solução de Orquestração.

O Apache Airflow é bem mais que um Orquestrador, é uma poderosa ferramente de Pipeline de Dados, con inumeras integrações;

<br>

[Documentação Apache Airflow](https://airflow.apache.org/)


### Observações

As Dags leva um tempo para serem ligas.

O tempo padrão é de 300s ou 5 Minutos, más pode ser alterado o parametro **dag_dir_list_interval** no no arquivo airflow.cfg