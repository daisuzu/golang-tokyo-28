#!/bin/sh

mkdir -p docs
cd docs
wget --mirror --page-requisites --quiet --show-progress --no-parent --convert-links --no-host-directories --adjust-extension --execute robots=off http://localhost:3999/index.slide
wget http://localhost:3999/static/styles.css -O static/styles.css
mv index.slide.html index.html
sed -i -e 's/\/static\//static\//' static/slides.js
