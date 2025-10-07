# Create a generic secret named 'media' from the file media.txt
kubectl create secret generic media --from-file=/opt/media.txt

# Verify that the secret is created
kubectl get secrets

# Apply the pod definition
vi secret-datacenter.yaml
kubectl apply -f secret-datacenter.yaml

# Check pod status
kubectl get pods

# Exec into the container and read the secret
kubectl exec -it secret-datacenter -- cat /opt/games/media.txt
