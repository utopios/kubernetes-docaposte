### Install de kind pour démarrer un cluster k8s dans des conteneurs docker
```bash
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/bin/kind
``` 
### Install kubectl => kubectl est un client en cli pour communiquer avec le cluster.

```bash
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
mv ./kubectl /usr/bin/kubectl
```

### Création d'un cluster avec kind
```bash
kind create cluster --name demo-cluster --config cluster-kind.yml
```

### Déplacer une image docker vers un cluster kind
kind load docker-image <nom_image> --name <nom_cluster>

### Création d'un pod
```bash
kubectl create -f first-pod.yml
```

- DaemonSet
- StateFulSet
- CronJob
- Deployment
    - Replicaset
        - POD


## Utilisation du service

curl http://service-a => pod avec le selector du service => redirection du trafic vers le pod

## Port forward

- Permet de faire un map entre l'host et un service clusterIP en mode dev

kubectl port-forward service/<nom_service> <port_host>:<port_service>

## NodePort

Pod A => cluster A => utiliser l'adresse ip d'un node du cluster B 


Pod B => cluster B => service de type nodePort associé au POD B

## Ingress 

- Des ressources pour gérer le routage du trafic externe vers le cluster.

    - Objet Ingress
    - Ingress Controller, Nginx, Traefik,....

- Des règles Ingress

- Hostname vers le cluster
- Path vers différents services

- Configuration
    1. Installer un Ingress controller
    ```bash
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.41.0/deploy/static/provider/cloud/deploy.yaml
    ``` 
    2. Créer un objet Ingress


## NetworkPolicy


SERVICEA (CLUSTER IP avec PORT 80)=>POD A 

N'importe pod sur le cluster pourra communiquer avec le POD A

POD N => http://serviceA

POD B, POD C