# Q.1
kubectl apply -f exercice2.yml
# Création d'un port forward entre l'host et le déploiement
kubectl port-forward deployment/advanced-deployment 5000:80