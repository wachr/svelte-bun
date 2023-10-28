#!/bin/sh -e

docker run -it --rm --name $(basename `pwd`)-container  \
    -u `id -u`:`id -g` -v `pwd`:/home/bun/app oven/bun $*
