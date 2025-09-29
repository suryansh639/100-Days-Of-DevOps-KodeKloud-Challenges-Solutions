kubectl apply -f webserver-pod.yaml
kubectl get pods -w
kubectl logs webserver -c sidecar-container
kubectl exec -it webserver -c nginx-container -- curl http://localhost
kubectl exec -it webserver -c nginx-container -- ls -l /var/log/nginx
kubectl exec -it webserver -c sidecar-container -- ls -l /var/log/nginx
