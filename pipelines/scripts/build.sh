#!/bin/bash

set +x
set -e

IMAGE_NAME_APACHE=${IMAGE_NAME_APACHE:-flaskr}
REGISTRY_URL=${REGISTRY_URL:-kkalynovskyi}
TAG=${TAG_APACHE:-latest}
docker build -t "${REGISTRY_URL}"/"${IMAGE_NAME_APACHE}":"${TAG}" \
		 	 -f Dockerfile .
docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
docker push "${REGISTRY_URL}"/"${IMAGE_NAME_APACHE}":"${TAG}"
#docker rmi --force "${REGISTRY_URL}"/"${IMAGE_NAME_APACHE}":"${TAG}"
