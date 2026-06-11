# MangiolaLaboratoryHPCell Docker Image

A Docker image based on [`rocker/tidyverse`](https://rocker-project.org/) with [`MangiolaLaboratory/HPCell`](https://github.com/MangiolaLaboratory/HPCell) pre-installed.

## Image

```
ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
```

## Usage

### Docker

```bash
docker pull ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
docker run --rm -it ghcr.io/rcannood/mangiolalaboratoryhpcell:latest R
```

### Singularity / Apptainer

Pull the image once (converts to a local `.sif` file):

```bash
singularity pull hpcell.sif docker://ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
# or, with Apptainer:
apptainer pull hpcell.sif docker://ghcr.io/rcannood/mangiolalaboratoryhpcell:latest
```

Run an interactive R session:

```bash
singularity run hpcell.sif
# or explicitly:
singularity exec hpcell.sif R
```

## CI

The image is automatically built and pushed to [GitHub Container Registry](https://ghcr.io/rcannood/mangiolalaboratoryhpcell) on every push to `main`.
