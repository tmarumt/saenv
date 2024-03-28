#!/bin/bash

if [ -z "$(ls -A /home/rstudio/.TinyTeX)" ]; then
  Rscript -e 'tinytex::install_tinytex(dir = "/home/rstudio/.TinyTeX", force = TRUE)'
fi

if [ ! -e /home/rstudio/.pip/bin/dvc ]; then
  pip install --user dvc dvc-gdrive
fi
