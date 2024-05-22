## Se connecter sur un pod 

```bash
kubectl exec -it <mysql-pod-name> -n db-demo -- /bin/bash
```

## Des actions mysql

```bash
mysql -u root -p
# saisi password => password
```

## Des requêtes sql

```sql
CREATE TABLE test (id INT PRIMARY KEY, value VARCHAR(50));
INSERT INTO test (id, value) VALUES (1, 'test_value');

```

## Supprime le pod
```bash
kubectl delete pod <mysql-pod-name> -n db-demo
```

## Se connecter sur un pod 

```bash
kubectl exec -it <mysql-pod-name> -n db-demo -- /bin/bash
```

## Des requêtes sql

```sql
SELECT * FROM test;
```