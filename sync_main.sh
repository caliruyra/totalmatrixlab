#!/usr/bin/env bash
set -e
TAG="cosmic-ember-crimson-canyon"
LIB="honey-ridge.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/caliruyra/totalmatrixlab/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
