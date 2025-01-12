#!/bin/bash
#
# Convert all SVGs to PNG thumbnails
#
# Usage:
#
#   ./scripts/convert_svgs_to_png_thumbnails.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/convert_svgs_to_png_thumbnails.sh"
    echo " "
    exit 42
fi

for svg_filename in $(ls *.svg)
do  
  png_filename="${svg_filename%.svg}_thumbnail.png"
  echo "svg_filename: ${svg_filename}"
  echo "png_filename: ${png_filename}"
  rm -f "${png_filename}"
  inkscape -w 128 -h 128 "${svg_filename}" -o "${png_filename}"
done
