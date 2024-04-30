#!/bin/bash

producer_image="producer_image"
consumer_image="consumer_image"

## Réseau de type bridge
docker network create temp-network

docker build -t $producer_image ./producer
docker build -t $consumer_image ./consumer

docker run --name producer --network temp-network -d $producer_image
docker run --name consumer --network temp-network -p 5001:5001 -d $consumer_image


