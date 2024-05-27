## Utilisation des rbac pour créer un dashboard

1. créer les ressources pour le dashboard, deployment, service account qui permet de communiquer avec api kubernetes, roles du dashboard. `kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml`
2. pour se connecter aux dashboard, créer un service account associé à un cluster Role (cluster-admin).
3. créer un token `kubectl -n <nom_namesapce> create token <service_account>`
4. Démarrer le proxy pour une connexion plus simple vers le dashboard `kubectl proxy`
5. Accéder à la page `http://127.0.0.1:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/`