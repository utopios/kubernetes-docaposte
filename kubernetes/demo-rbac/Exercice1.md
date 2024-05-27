### Exercice : Gestion des accès pour un développeur

#### Objectif
Configurer un rôle RBAC pour un compte de service nommé `developer` dans le namespace `development`. Ce rôle doit permettre de lire et de lister les pods, mais ne doit pas permettre de créer ou de supprimer des pods.

#### Étapes

1. Créer le namespace `development`.
2. Créer le Service Account `developer` dans le namespace `development`.
3. Définir le Role `pod-reader` avec les permissions nécessaires.
4. Créer le RoleBinding `developer-pod-reader-binding` pour lier le Service Account au Role.
5. Vérifier que le Service Account `developer` peut lire et lister les pods, mais ne peut pas créer ni supprimer des pods.

#### Questions

1. Quelles étapes sont nécessaires pour créer et lier un rôle RBAC à un service account ?
2. Comment vérifier que les permissions ont été correctement appliquées ?
3. Pourquoi est-il important de restreindre les permissions des comptes de service dans Kubernetes ?