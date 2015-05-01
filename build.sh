#!/bin/bash

# Easier than dealing with git submodules
git clone https://github.com/kevana/osm-pathfinding.git osm_pathfinding

docker build -t kevan/kevanahlquist.com .

#rm -rf osm_pathfinding
