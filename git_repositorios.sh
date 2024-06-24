#!/bin/bash

echo "==============================="
echo "==== Clonando Repositórios ===="
echo "==============================="

echo  "\n"

# pasta_atual=$(pwd)

# if [ -d "airflow/dags/airflow_dags" ]
#     then
#         echo "==== Clonando Dags Airflow ===="
#         cd  airflow/dags/airflow_dags
#         git reset --hard
#         git pull
#     else 
#         echo "==== Atualizando Repositório Dags Airflow ===="
#         git clone https://github.com/pauloricardoferreira/live_airflow_dags.git airflow/dags/airflow_dags
# fi

# echo  "\n"

cd $pasta_atual

if [ -d "projetos/hop_config" ]
    then
        echo "==== Clonando Repositório Configuração do Hop ===="
        cd  projetos/hop_config
        git reset --hard
        git pull
    else 
        echo "==== Atualizando Repositórios Configuração do Hop ===="
        git clone https://github.com/josucafd/hop_config.git projetos/hop_config
fi

echo  "\n"

cd $pasta_atual

if [ -d "projetos/live_hop" ]
    then
        echo "==== Clonando Repositório Artefatos do Hop ===="
        cd  projetos/live_hop
        git reset --hard
        git pull
    else 
        echo "==== Atualizando Repositórios Artefatos do Hop ===="
        git clone https://github.com/josucafd/jslavanderia.git projetos/jslavanderia
fi