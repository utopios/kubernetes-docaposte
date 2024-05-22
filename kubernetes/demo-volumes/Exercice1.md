#### Exercice 1 : Déploiement d'une Base de Données MySQL avec Volumes Persistants

1. **Préparation de l'Environnement**:
   - Créez un namespace dédié pour l'exercice.
   - Assurez-vous que votre cluster Kubernetes a accès à un type de stockage supporté.

2. **Création du PersistentVolume (PV) et du PersistentVolumeClaim (PVC)**:
   - Créez un `PersistentVolume` (PV) adapté à vos besoins.
   - Créez un `PersistentVolumeClaim` (PVC) pour utiliser le PV.

3. **Déploiement de MySQL avec un Volume Persistant**:
   - Déployez un pod MySQL en utilisant le PVC pour stocker les données.

4. **Vérification**:
   - Assurez-vous que la base de données MySQL est en cours d'exécution et persistante.
