# Create the YAML file:

vi httpd-pod.yaml


# Paste the YAML above and save.

# Apply it:

kubectl apply -f httpd-pod.yaml


# Check if the pod is running:

kubectl get pods


#Confirm the resources are applied:

kubectl describe pod httpd-pod
