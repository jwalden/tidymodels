FROM rocker/tidyverse:4.2.2
RUN apt-get update -qq && apt-get -y --no-install-recommends install libxt6
# install2.r errors out on multiple packages so we run R directly
RUN R -q -e 'update.packages(ask=FALSE)'
RUN R -q -e 'install.packages(c("applicable", "baguette", "beans", "bestNormalize", "broom", "censored", "cli", "corrplot", "corrr", "discrim", "doMC", "doParallel", "embed", "finetune", "ggforce", "ggrepel", "gridExtra", "infer", "janitor", "kableExtra", "kknn", "lattice", "lme4", "multilevelmod", "patchwork", "poissonreg",  "probably", "rlang", "skimr", "survival", "textrecipes", "themis", "tidymodels", "tidyposterior", "tidyr", "uwot", "vip", "workflowsets"))'
