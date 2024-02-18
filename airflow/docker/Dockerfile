FROM apache/airflow:2.8.0

USER root

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
         git \
  && apt-get autoremove -yqq --purge \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN chown -R airflow /opt
  
USER airflow

RUN python -m pip install --upgrade pip

COPY requirements.txt requirements.txt 

RUN pip install -r requirements.txt 
