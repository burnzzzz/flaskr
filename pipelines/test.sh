#!/bin/bash

set +x
set -e

# Building and Running tests

pip install --editable .
export FLASK_APP=flaskr
flask initdb
python setup.py test
