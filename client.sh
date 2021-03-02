export DOCKER_USERNAME=cpr1c
export ONEC_USERNAME=upamk
export ONEC_PASSWORD=upamk123
export ONEC_VERSION=8.3.12.1924


docker build \
  --pull \
  --build-arg ONEC_USERNAME=$ONEC_USERNAME \
  --build-arg ONEC_PASSWORD=$ONEC_PASSWORD \
  --build-arg ONEC_VERSION=$ONEC_VERSION \
  --build-arg DOCKER_USERNAME=$DOCKER_USERNAME \
  --build-arg nls_enabled=true \
  -t $DOCKER_USERNAME/onec-client:$ONEC_VERSION \
  -f client/Dockerfile .
