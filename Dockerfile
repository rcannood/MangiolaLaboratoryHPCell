FROM rocker/tidyverse:latest

RUN Rscript -e "install.packages('remotes')"

RUN Rscript -e "remotes::install_github('MangiolaLaboratory/HPCell')"
