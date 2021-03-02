export DOCKER_USERNAME=cpr1c
export ONEC_USERNAME=upamk
export ONEC_PASSWORD=upamk123
export ONEC_VERSION=8.3.12.1924

docker build  \
  --build-arg ONEC_VERSION=$ONEC_VERSION \
  --build-arg DOCKER_USERNAME=$DOCKER_USERNAME \
  -t $DOCKER_USERNAME/onec-client-vnc-jenkins:$ONEC_VERSION \
  -f client-vnc-jenkins/Dockerfile .
