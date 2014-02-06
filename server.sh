#!/bin/bash

export DXR_FOLDER=$PWD/target
export LD_LIBRARY_PATH=$PWD/dxr/trilite
cd dxr/dxr
gunicorn wsgi:application
