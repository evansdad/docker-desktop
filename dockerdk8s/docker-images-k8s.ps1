$KUBE_VERSION="v1.22.5"
$KUBE_PAUSE_VERSION="3.5"
$ETCD_VERSION="3.5.0-0"
$COREDNS_VERSION="v1.8.4"
$GCR_URL="k8s.gcr.io"
$ALIYUN_URL="registry.cn-hangzhou.aliyuncs.com/google_containers"

# get images
docker pull $ALIYUN_URL/pause:$KUBE_PAUSE_VERSION
docker tag $ALIYUN_URL/pause:$KUBE_PAUSE_VERSION $GCR_URL/pause:$KUBE_PAUSE_VERSION
docker rmi $ALIYUN_URL/pause:$KUBE_PAUSE_VERSION

docker pull $ALIYUN_URL/kube-controller-manager:$KUBE_VERSION
docker tag $ALIYUN_URL/kube-controller-manager:$KUBE_VERSION $GCR_URL/kube-controller-manager:$KUBE_VERSION
docker rmi $ALIYUN_URL/kube-controller-manager:$KUBE_VERSION

docker pull $ALIYUN_URL/kube-scheduler:$KUBE_VERSION
docker tag $ALIYUN_URL/kube-scheduler:$KUBE_VERSION $GCR_URL/kube-scheduler:$KUBE_VERSION
docker rmi $ALIYUN_URL/kube-scheduler:$KUBE_VERSION

docker pull $ALIYUN_URL/kube-proxy:$KUBE_VERSION
docker tag $ALIYUN_URL/kube-proxy:$KUBE_VERSION $GCR_URL/kube-proxy:$KUBE_VERSION
docker rmi $ALIYUN_URL/kube-proxy:$KUBE_VERSION

docker pull $ALIYUN_URL/kube-apiserver:$KUBE_VERSION
docker tag $ALIYUN_URL/kube-apiserver:$KUBE_VERSION $GCR_URL/kube-apiserver:$KUBE_VERSION
docker rmi $ALIYUN_URL/kube-apiserver:$KUBE_VERSION

docker pull $ALIYUN_URL/etcd:$ETCD_VERSION
docker tag $ALIYUN_URL/etcd:$ETCD_VERSION $GCR_URL/etcd:$ETCD_VERSION
docker rmi $ALIYUN_URL/etcd:$ETCD_VERSION

docker pull $ALIYUN_URL/coredns:$COREDNS_VERSION
docker tag $ALIYUN_URL/coredns:$COREDNS_VERSION $GCR_URL/coredns/coredns:$COREDNS_VERSION
docker rmi $ALIYUN_URL/coredns:$COREDNS_VERSION

# show images
docker images