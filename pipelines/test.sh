#!/bin/bash

# Building and Running tests

apt update && apt install -y python-pip
pip install --editable .
export FLASK_APP=flaskr
flask initdb
python setup.py test

