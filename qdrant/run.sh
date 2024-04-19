#!/bin/bash
#

cd `dirname $0` 

if [ -d "storage" ]
then
    rm -rf  storage/*
else
    mkdir storage
fi

docker run -p 6333:6333 -p 6334:6334 \
    -v $(pwd)/storage:/qdrant/storage \
    -v $(pwd)/custom_config.yaml:/qdrant/config/production.yaml \
    qdrant/qdrant
