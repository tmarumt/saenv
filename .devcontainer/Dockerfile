FROM rocker/tidyverse

RUN /rocker_scripts/install_python.sh
RUN /rocker_scripts/install_julia.sh

RUN apt-get update && apt-get install -y --no-install-recommends \
    libxt-dev

# Create directories for cache of packages and set permissions
RUN cd /home/rstudio && mkdir .pip .cache .cache/R .cache/R/renv .TinyTeX .julia && \
    chown rstudio:rstudio .pip .cache .cache/R .cache/R/renv .TinyTeX .julia

RUN install2.r --error --skipinstalled -n -1 \
    renv \
    languageserver

ENV PATH=$PATH:/home/rstudio/.pip/bin
