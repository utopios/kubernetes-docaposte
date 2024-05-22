# Création du namespace 
kubectl delete -f mysql-deployment.yml

kubectl delete -f pv.yml
kubectl delete -f pvc.yml

kubectl delete -f namespace.yml