#!/bin/sh

tag='chris-peterson/virgo:local'
docker build -t $tag .

docker run --env INPUT_TEMPLATES='/data/src/futility/futility.psd1' --env GITHUB_RUN_NUMBER='0' -v $PWD/:/data -it $tag
