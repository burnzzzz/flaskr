#!/bin/bash

function build {
    pip install --upgrade pip
    pip install .
    flask initdb
}

function run_tests {
    python setup.py test
}

function build_push_container {

    docker build -t "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}" -f Dockerfile .
    docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}"
    docker push "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}"
    docker rmi --force "${REGISTRY_URL}"/"${IMAGE_NAME}":"${TAG}"
}
