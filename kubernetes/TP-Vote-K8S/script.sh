## Pour le dev, on utilisera un cluster kind (k8s sur docker)

## Etape 1 => création du cluster avec une configuration

## Etape 2 => Construire les images et vérifier que les images sont disponibles sur le cluster.

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
