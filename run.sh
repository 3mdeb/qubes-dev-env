#!/bin/bash

# mounting /dev:/dev is required workaround to access loop partition devices
# https://github.com/moby/moby/issues/27886
docker run --rm -it -u 1000 --privileged -v /dev:/dev -v $PWD:$PWD -w $PWD 3mdeb/qubes-dev-env
