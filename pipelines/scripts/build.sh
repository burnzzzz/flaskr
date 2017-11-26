#!/bin/bash

IMAGE_NAME_APACHE=${IMAGE_NAME_APACHE:-flaskr}
REGISTRY_URL=${REGISTRY_URL:-kkalynovskyi}
TAG=${TAG_APACHE:-latest}
docker build -t "${REGISTRY_URL}"/"${IMAGE_NAME_APACHE}":"${TAG}" \
		 	 -f Dockerfile .
docker images

