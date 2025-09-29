

## 1️-  Pod YAML Manifest
```bash
   vi volume-share-nautilus.yaml
```
```yaml
apiVersion: v1
kind: Pod
metadata:
  name: volume-share-nautilus
spec:
  containers:
    - name: volume-container-nautilus-1
      image: debian:latest
      command: ["sleep", "infinity"]
      volumeMounts:
        - name: volume-share
          mountPath: /tmp/media

    - name: volume-container-nautilus-2
      image: debian:latest
      command: ["sleep", "infinity"]
      volumeMounts:
        - name: volume-share
          mountPath: /tmp/apps

  volumes:
    - name: volume-share
      emptyDir: {}
```


## 2️ -  Apply the Pod

```bash
  kubectl apply -f volume-share-nautilus.yaml
```

Check pod status:

```bash
  kubectl get pods
```

---

## 3️ - Create a Test File in First Container

```bash
    kubectl exec -it volume-share-nautilus -c volume-container-nautilus-1 -- bash
```

Inside container:

```bash
   echo "This is a shared test file" > /tmp/media/media.txt
   exit
```

---

## 4️ - Verify File in Second Container

```bash
   kubectl exec -it volume-share-nautilus -c volume-container-nautilus-2 -- bash
```

Inside container:

```bash
   cat /tmp/apps/media.txt
```

Expected output:

```
This is a shared test file
```
