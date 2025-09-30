# Using a YAML file
vi nginx-deployment.yaml

#Apply it to the cluster:

kubectl apply -f nginx-deployment.yaml


#Check if it’s running:

kubectl get deployments
kubectl get pods