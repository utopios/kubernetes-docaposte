# Création du namespace 

kubectl apply -f namespace.yml
kubectl apply -f pv.yml
kubectl apply -f pvc.yml
kubectl apply -f mysql-deployment.yml