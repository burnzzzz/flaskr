#!/bin/bash

export IMAGE_NAME=${IMAGE_NAME:-flaskr}
export REGISTRY_URL=${REGISTRY_URL:-kkalynovskyi}
export TAG=${TAG_APACHE:-latest}

# Building and pushing container
source pipelines/scripts/ci_lib.sh

build_push_container

exit 0
