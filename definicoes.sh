#!/bin/bash

echo "================================="
echo "==== Iniciando Configurações ===="
echo "================================="

echo  "\n"

echo "==== Criandas pastas para o Airflow ===="

mkdir -p ./airflow/dags ./airflow/logs ./airflow/plugins ./airflow/config

echo  "\n"

echo "==== Criando Arquivo .env Airflow ===="

echo "AIRFLOW_UID=$(id -u)" > ./airflow/.env

echo  "\n"

echo "==== Criandas pastas para o Hop ===="

mkdir -p projetos
