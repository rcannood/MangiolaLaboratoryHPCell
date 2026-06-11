# syntax=docker/dockerfile:1

FROM rocker/tidyverse:4.6

# OCI image metadata
LABEL org.opencontainers.image.title="MangiolaLaboratory HPCell" \
      org.opencontainers.image.description="rocker/tidyverse image with MangiolaLaboratory/HPCell pre-installed for massively-parallel single-cell analysis" \
      org.opencontainers.image.source="https://github.com/rcannood/mangiolalaboratoryhpcell" \
      org.opencontainers.image.url="https://github.com/MangiolaLaboratory/HPCell" \
      org.opencontainers.image.documentation="https://github.com/MangiolaLaboratory/HPCell" \
      org.opencontainers.image.licenses="GPL-3.0" \
      org.opencontainers.image.authors="Robrecht Cannoodt <rcannood@gmail.com>" \
      org.opencontainers.image.vendor="Mangiola Laboratory" \
      org.opencontainers.image.base.name="docker.io/rocker/tidyverse:4.6.0"

# Install HPCell and its dependencies
RUN Rscript -e 'pak::pkg_install("github::MangiolaLaboratory/HPCell")' \
 && Rscript -e 'library(HPCell)' \
 && rm -rf /tmp/* /var/lib/apt/lists/*
