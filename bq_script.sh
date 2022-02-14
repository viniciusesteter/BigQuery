#!/bin/bash
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-372.0.0-linux-arm.tar.gz
sudo apt-get update && sudo apt-get install google-cloud-sdk
gcloud init --console-only
gcloud auth activate-service-account marcondes.vinicius@gmail.com --key-file=/gcp_auth.json --project=credible-skill-341215
bq query --use_legacy_sql=false --destination_table=Alunos.Tabela \
          'INSERT INTO credible-skill-341215.Alunos.Tabela
          (ID,Nome,Telefone,Matricula,Status)
            values (1,"Maria",34267699,8888,"Inativo"), 
            (2,"Joaquim",34267677,7777,"Inativo"),
            (3,"Luis",34267666,6666,"Inativo"),
            (4,"Julia",34267655,5555,"Ativado"),
            (5,"Carla",34267644,4444,"Ativado")'