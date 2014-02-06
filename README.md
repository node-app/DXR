# Node.app DXR

The Node.app DXR provides an automated build of a [Mozilla DXR](https://github.com/mozilla/dxr/) index for [Node.js](https://github.com/joyent/node/).

This is designed to run on a Ubuntu 12.04 64bit throw-away VM and has the following `apt` dependencies:

- git
- mercurial
- make
- g++

To install and build, run `git submodule update --init --recursive`, the `install.sh` and `build.sh` scripts, in that order.
