FROM rocker/tidyverse
RUN /rocker_scripts/install_quarto.sh; \
    /rocker_scripts/install_python.sh; \
    /rocker_scripts/install_julia.sh

RUN sudo apt-get update && sudo apt-get install -y libxt-dev

ENV NCPUS -1

# Create directories for cache of packages and set permissions
RUN cd /home/rstudio && mkdir .pip .cache .cache/R .cache/R/renv .TinyTeX .julia && \
    chown rstudio:rstudio .pip .cache .cache/R .cache/R/renv .TinyTeX .julia

RUN install2.r --error --skipinstalled -n $NCPUS renv languageserver; \
    install2.r --error --skipinstalled -n $NCPUS tinytex && \
    R -e 'tinytex::install_tinytex(dir = "/home/rstudio/.TinyTeX", force = TRUE)'

RUN pip install dvc dvc-gdrive
ENV PATH $PATH:~/.pip/bin
