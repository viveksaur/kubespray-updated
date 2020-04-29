kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc7/aio/deploy/recommended.yaml
kubectl get pods --namespace kubernetes-dashboard -o wide
kubectl get svc --namespace kubernetes-dashboard -o wide



# Dashboard creation
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-rc7/aio/deploy/recommended.yaml

