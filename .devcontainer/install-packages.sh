#!/bin/bash

pip install dvc dvc-gdrive

R -e 'install.packages(c("renv", "languageserver", "quarto"))'
R -e 'install.packages("tinytex")' && R -e 'tinytex::install_tinytex(dir = "/home/rstudio/.TinyTeX", force = TRUE)'
