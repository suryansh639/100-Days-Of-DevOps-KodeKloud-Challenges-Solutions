#Save the YAML file:
nano iron-gallery-deployment.yaml

#Apply it:
kubectl apply -f iron-gallery-deployment.yaml


#Verify all resources:
kubectl get all -n iron-namespace-xfusion