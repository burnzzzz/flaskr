#!/bin/bash

function build {
    pip install .
    export FLASK_APP=flaskr
    flask initdb
}

function run_tests {
    python setup.py test
}
