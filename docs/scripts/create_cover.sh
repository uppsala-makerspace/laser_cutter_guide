#!/bin/bash
# Create the cover
#
# Usage:
#
# ./create_cover.sh
#

build_folder=build

rm -rf build
mkdir build

if [ ! -d $build_folder ]; then 
  echo "Error: failed to create build folder"
  exit 1
fi

# Concatenate all markdown files, convert those to one PDF
#
# We are in the 'scripts' folder
#
cp ../misc/cover/* $build_folder
cat ../misc/cover/README.md > $build_folder/README.md

cp guide_style.theme $build_folder

cd "${build_folder}" || exit 41

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
#
# We are in the 'scripts/build' folder
#
pandoc README.md -o cover.pdf --highlight-style=guide_style.theme -V geometry:margin=0.5in

cp cover.pdf ../../pdfs/cover.pdf