#!/bin/sh
set -e

podman images | grep nvim-static-build || ./build-image.sh
mkdir work
podman run -it --rm --net=host -v $PWD/work:/work -v $PWD/build.sh:/build.sh nvim-static-build /build.sh
cd work
mv neovim/build/PREFIX nvim-static
tar -czf nvim-static-0.10.3.tar.gz nvim-static
cd ..
mv work/nvim-static.tar.gz .
rm -rf work
