#!/bin/bash
docker run -d --rm --name es -v es_data:/data -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" kadriansyah/es-6_6_2