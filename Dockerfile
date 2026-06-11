FROM rocker/tidyverse:latest

RUN Rscript -e "remotes::install_github('MangiolaLaboratory/HPCell')"
