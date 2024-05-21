## Pour le dev, on utilisera un cluster kind (k8s sur docker)

## Etape 1 => création du cluster avec une configuration
kind create cluster --name tp-kubernetes --config ./kind/kind-config.yml
## Etape 2 => Construire les images et vérifier que les images sont disponibles sur le cluster.
docker build -t result-image ./result/.
docker build -t vote-image ./vote/.
docker build -t worker-image ./worker/.

kind load docker-image result-image --name tp-kubernetes
kind load docker-image vote-image --name tp-kubernetes
kind load docker-image worker-image --name tp-kubernetes

## Etape 3 => Ressources k8s

### Etape 3.1 => ressources de déploiements
#### Déploiement pour vote
#### Déploiement pour result
#### Déploiement pour worker
#### Déploiement pour redis
#### Déploiement pour postgres
### Etape 3.2 => ressources de communication (services, Ingress controller)
##### CluserIP => redis et db 
##### Nodeport ou loadBalancer ou un Ingress controller pour le routage à partir de l'extérieur vers result, vote
### Etape 3.3 => ressources de networkpolicies
### Deux networkpolicies pour le controle du traffic vers redis et postgres

kubectl create -f k8s/namespace.yml
kubectl create -f k8s/configmap.yml
kubectl create -f k8s/secrets.yml
kubectl create -f k8s/services/clusterip-postgres.yml
kubectl create -f k8s/services/clusterip-redis.yml
kubectl create -f k8s/services/nodeport-vote.yml
kubectl create -f k8s/services/nodeport-result.yml
kubectl create -f k8s/deployments/postgres-deployment.yml
kubectl create -f k8s/deployments/redis-deployment.yml
kubectl create -f k8s/deployments/vote-deployment.yml
kubectl create -f k8s/deployments/worker-deployment.yml
kubectl create -f k8s/deployments/result-deployment.yml
kubectl create -f k8s/networkpolicies/policy-postgres.yml
kubectl create -f k8s/networkpolicies/policy-redis.yml

