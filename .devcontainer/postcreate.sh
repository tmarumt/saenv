#!/bin/bash

if [ -z "$(ls /home/rstudio/.TinyTeX)" ]; then
  Rscript -e 'tinytex::install_tinytex(dir = "/home/rstudio/.TinyTeX", force = TRUE)'
fi

if [ -z "$(ls /home/rstudio/.pip)" ]; then
  pip install --user dvc dvc-gdrive
fi
