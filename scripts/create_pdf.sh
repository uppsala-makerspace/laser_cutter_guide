#!/bin/bash

# Create guide
pandoc guide.md -o guide.pdf

# Create superguide
pdfunite guide.pdf manual.pdf PS-FILM-EASYWEED-EN.pdf super_guide.pdf