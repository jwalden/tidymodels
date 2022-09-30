# Learning Tidymodels

This repository contains R notebooks and data for learning Tidymodels.

## Using with renv

R package configuration is handled by `renv`. To set up packages, start `R`
and setup the snapshotted package configuration as follows:

```
R
> renv::restore()
```

## Using with Docker

`Dockerfile` describes a docker image based on the `rocker/tidyverse` version 4.2.1 image from the [https://rocker-project.org/](Rocker Project). To build the image, run

`docker build -t learn-tidymodels .`

Use the following command to run the container created by the build above:

docker run -e PASSWORD=rstudio --rm -p 8787:8787 \
  --mount src=`pwd`,target=/home/rstudio/tm,type=bind \
  learn-tidymodels

which will make the current working directory available in Docker under
the directory `/home/rstudio/tm`.

Access the RStudio web interface by pointing your browser at `http://localhost:8787/`.

## References

  - Max Kuhn and Julia Silge. [Tidy Modeling with R](https://www.tmwr.org/).
  - Thomas Mock. [Tidy Tuesday: A weekly data project aimed at the R ecosystem](https://github.com/rfordatascience/tidytuesday).
  - Julia Silge and David Robinson. [Text Mining with R: A Tidy Approach](https://www.tidytextmining.com/).
  - Julia Silge. [Blog](https://juliasilge.com/blog/).

