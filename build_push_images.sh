#!/bin/bash

#melakukan build dari dockerfile
docker build -t item-app:v1

#cek list docker images yang ada
docker images

#push docker images ke docker hub
cat ../dockerpass.txt | docker login --username waykanza --password-stdin
docker tag item-app:v1 waykanza/item-app:v1
docker push waykanza/item-app:v1