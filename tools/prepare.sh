#!/bin/bash
set -e

rm -rf tmp
mkdir tmp
cp package.json LICENSE xr-standalone.zip README.md tmp

# Put the following file to disk
cat <<EOF > tmp/index.js
const XR8 = () => new Promise((resolve) => {
  if (window.XR8) {
    resolve(window.XR8)
  } else {
    window.addEventListener('xrloaded', () => resolve(window.XR8), {once: true})
  }
})

const XR8 = await
module.exports = {
  xr8Ready,
}
EOF

mkdir tmp/dist

cd tmp/dist

unzip ../xr-standalone.zip

