#!/bin/bash
# Create the PDFs
#
# Usage:
#
# ./create_book_1.sh
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

cp ../steps/*.* $build_folder
cp ../misc/foreword/*.* $build_folder
cp ../misc/safety_warning/*.* $build_folder

# Newline between TOC and foreworkd
echo " " > $build_folder/README.md # Start from scratch
echo "\pagebreak" >> $build_folder/README.md
echo " " >> $build_folder/README.md

cat ../misc/foreword/README.md >> $build_folder/README.md

# echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../misc/safety_warning/README.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md


cat ../steps/get_material.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/start_ventilation.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/power_on_laser_cutter.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/start_computer.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/start_lightburn.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/position_material.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/setup_laser_physically.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/setup_laser_in_lightburn.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/load_image.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/setup_lightburn.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/close_enclosure.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/start_laser.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/turn_off_laser.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/turn_off_computer.md >> $build_folder/README.md

echo " " >> $build_folder/README.md; echo "\pagebreak" >> $build_folder/README.md; echo " " >> $build_folder/README.md

cat ../steps/turn_off_ventilation.md >> $build_folder/README.md

Rscript -e 'mkdocs2md::convert_file_to_markdown("build/README.md", "build/README.md")'

cp guide_style.theme $build_folder

cd "${build_folder}" || exit 41

#
# We are in the 'scripts/build' folder
#

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
pandoc README.md -o theory_book_without_cover.pdf --toc --toc-depth=1 --highlight-style=guide_style.theme -V geometry:margin=0.5in

cp theory_book_without_cover.pdf ../../pdfs/theory_book_without_cover.pdf

cd ../../pdfs || exit 42
#
# We are in the 'pdfs' folder
#
pdfunite theory_cover.pdf theory_book_without_cover.pdf theory_book.pdf

# Make booklet
bookletimposer -a theory_book.pdf -o theory_booklet.pdf

# Cleanup
rm theory_book_without_cover.pdf
