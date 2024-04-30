#!/bin/bash

producer_image="producer_image"
consumer_image="consumer_image"

## Réseau de type bridge
docker network create temp-network
docker volume create data-temperatures

docker build -t $producer_image ./producer
docker build -t $consumer_image ./consumer

docker run --name producer --network temp-network -d $producer_image
docker run --name consumer --network temp-network -p 5001:5001 -v data-temperatures:/app/data -d $consumer_image


