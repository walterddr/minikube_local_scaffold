helm repo add pinot https://raw.githubusercontent.com/apache/pinot/master/kubernetes/helm

helm upgrade --install pinot pinot/pinot \
    -n pinot \
    --set cluster.name=pinot \
    --values pinot-values.yaml
