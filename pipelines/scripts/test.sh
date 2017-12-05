#!/bin/bash

set -x
set -e
export FLASK_APP=flaskr

# Building and Running tests
source pipelines/scripts/ci_lib.sh

build
run_tests

exit 0
