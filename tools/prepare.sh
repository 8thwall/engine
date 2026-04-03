#!/bin/bash
set -e

rm -rf tmp
mkdir -p tmp/dist
cp package.json LICENSE xr-standalone.zip README.md tmp
cp tools/entry.js tmp/index.js
cd tmp/dist
unzip ../xr-standalone.zip
