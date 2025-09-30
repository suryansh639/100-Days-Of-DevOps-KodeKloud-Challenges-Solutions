# Save the YAML above to a file, for example:

vi nginx-deployment.yaml


# Apply it to the cluster:

kubectl apply -f nginx-deployment.yaml


# Check the pods:

kubectl get pods


# You should see 3 pods running for nginx-deployment.

# Check the service:

kubectl get svc nginx-service