#!/bin/bash

echo "==============================="
echo "==== Clonando Repositórios ===="
echo "==============================="

echo -e "\n"

# Salva o diretório atual
pasta_atual=$(pwd)

# Função para clonar ou atualizar um repositório
clone_or_update_repo() {
    local repo_url=$1
    local repo_dir=$2
    local repo_name=$3

    echo "==== Processando $repo_name ===="

    if [ -d "$repo_dir" ]; then
        if [ -d "$repo_dir/.git" ]; then
            echo "Diretório $repo_dir existe e é um repositório Git. Atualizando..."
            cd "$repo_dir"
            git reset --hard
            git pull
        else
            echo "Erro: $repo_dir já existe e não é um repositório Git."
        fi
    else
        echo "Diretório $repo_dir não existe. Clonando repositório..."
        git clone "$repo_url" "$repo_dir"
    fi

    echo -e "\n"

    # Retorna ao diretório original
    cd "$pasta_atual"
}

# Clonando ou atualizando Repositório Configuração do Hop
clone_or_update_repo "https://github.com/josucafd/hop_config.git" "projetos/hop_config" "Configuração do Hop"

# Clonando ou atualizando Repositório JS Lavanderia
clone_or_update_repo "https://github.com/josucafd/jslavanderia.git" "projetos/jslavanderia" "JS Lavanderia"

echo "==============================="
echo "==== Processo Concluído ======="
echo "==============================="
