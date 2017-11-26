#!/bin/bash

set -x
set -e

# Building and Running tests
source pipelines/scripts/ci_lib.sh

build
run_tests

exit 0
