minikube start \
  --driver=docker \
  --container-runtime=containerd \
  --memory=12288 \
  --cpus=4 \
  --disk-size=150g \
  --nodes 3
