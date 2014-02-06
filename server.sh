#!/bin/bash

export DXR_FOLDER=$PWD/target
export LD_LIBRARY_PATH=$PWD
export PYTHONPATH=$PWD/dxr:$PYTHONPATH
cd dxr
python setup.py install
cd dxr
gunicorn wsgi:application
