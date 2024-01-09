#!/bin/bash

#Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
#Melihat daftar image di lokal.
docker images
#Mengubah nama image agar sesuai dengan format github packages
docker tag item-app:v1 ghcr.io/adinda345/item-app:v1
#Login ke Docker Hub
#echo $PASSWORD_DOCKER_HUB | docker login -u adinda345 --password-stdin
echo $PAT | docker login ghcr.io --username adinda345 --password-stdin
#Mengunggah image ke github packages
docker push ghcr.io/adinda345/item-app:v1