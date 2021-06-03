# open-match-demo

```
# deploy open-match
kubectl create namespace open-match

kubectl apply --namespace open-match \
  -f https://open-match.dev/install/v1.2.0/yaml/01-open-match-core.yaml

kubectl apply --namespace open-match \
  -f https://open-match.dev/install/v1.2.0/yaml/06-open-match-override-configmap.yaml \
  -f https://open-match.dev/install/v1.2.0/yaml/07-open-match-default-evaluator.yaml

# create namespace
kubectl create namespace open-match-dangerous1990-demo

# deploy demo
kubectl apply -n open-match-dangerous1990-demo -f demo.yaml

# run client submit ticket and get assign
cd client && go run *.go
```