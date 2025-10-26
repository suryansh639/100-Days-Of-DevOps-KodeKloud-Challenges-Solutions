## Fix Redis Deployment on Kubernetes

### Issue

* Pod stuck in `Pending` due to missing ConfigMap `redis-cofig`.
* Redis image typo: `redis:alpin` → should be `redis:alpine`.

### Fix

```bash
# Create missing ConfigMap
kubectl create configmap redis-cofig --from-literal=redis.conf="bind 0.0.0.0"

# Fix image
kubectl set image deployment/redis-deployment redis-container=redis:alpine

# Restart deployment
kubectl rollout restart deployment redis-deployment
kubectl get pods -w
```
