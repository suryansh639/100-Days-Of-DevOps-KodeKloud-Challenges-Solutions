# 1. Paste the content of the file in  pod-greeting.yaml
vi pod-greeting.yaml

# 2. Apply the manifest
kubectl apply -f pod-greeting.yaml

# 3. Check pod status
kubectl get pods

# 4. View the logs (output)
kubectl logs -f print-envars-greeting