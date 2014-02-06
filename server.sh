#!/bin/bash

export DXR_FOLDER=$PWD/target
export LD_LIBRARY_PATH=$PWD/dxr/trilite
export PYTHONPATH=$PWD/dxr:$PWD/dxr/trilite:$PYTHONPATH
cp libtrilite.so dxr/trilite
cd dxr
python setup.py install
cd dxr
gunicorn wsgi:application
