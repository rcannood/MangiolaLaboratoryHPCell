# MangiolaLaboratoryHPCell Docker Image

A Docker image based on [`rocker/tidyverse`](https://rocker-project.org/) with [`MangiolaLaboratory/HPCell`](https://github.com/MangiolaLaboratory/HPCell) pre-installed.

## Image

```
ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
```

## Usage

```bash
docker pull ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
docker run --rm -it ghcr.io/rcannood/mangiolalaboratoryhpcell:latest R
```

## CI

The image is automatically built and pushed to [GitHub Container Registry](https://ghcr.io/rcannood/mangiolalaboratoryhpcell) on every push to `main`.
