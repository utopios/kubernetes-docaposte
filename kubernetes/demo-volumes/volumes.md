## Types de volumes

1. Volumes éphémères

- **ConfigMap et Secret** : Utilisés pour injecter de la configuration.
- **EmptyDir**:  Crée lorsqu'un pod est assigné à un noeud et dure toute la durée de vie de pod.

2. Volumes persistants

- **HostPath**: Monte un répértoire du systèmes de fichier du noeud sur un pod. Il a le même cycle de vie que le noeud.
- **PersistentVolume (PV) et PersistentVolumeClaim (PVC)**: Les PV sont des ressources de stockage sur la totalité du cluster allouées par l'administrateur. PVC sont des demandes d'utilisation du stockage, crée par l'utilisateur du cluster.
