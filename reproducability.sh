#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)
cd "${DIR}"

Rscript --default-packages=tidyverse reproducability.Rmd

Rscript --default-packages=tidyverse,stargazer,stats,rmarkdown reproducability.Rmd

Rscript -e "require ('knitr');knit('reproducability.Rmd')"

pdflatex reproducability.tex