create:
	kind delete clusters kind && kind create cluster --config=k8s/kind.yaml

up:
	kubectl apply -f k8s/configmap-env.yaml \
	&& kubectl apply -f k8s/configmap-family.yaml \
	&& kubectl apply -f k8s/secret.yaml \
	&& kubectl apply -f k8s/service.yaml \
	&& kubectl apply -f k8s/metrics-server.yaml \
	&& kubectl apply -f k8s/hpa.yaml \
	&& kubectl apply -f k8s/pvc.yaml \
	&& kubectl apply -f k8s/deployment.yaml && watch -n1 kubectl get pods