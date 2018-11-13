## Autu-gen using containerit package. It's not work for plumber right now.

FROM rocker/r-ver:3.5.1
LABEL maintainer="mrchypark"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y git-core \
	libcurl4-openssl-dev \
	libssh2-1-dev \
	libssl-dev \
	make \
	zlib1g-dev
RUN ["install2.r", "assertthat", "backports", "clisymbols", "crayon", "curl", "digest", "dygraphs", "formatR", "fs", "futile.logger", "futile.options", "gh", "git2r", "glue", "htmltools", "htmlwidgets", "httpuv", "httr", "ini", "jsonlite", "lambda.r", "later", "lattice", "magrittr", "packrat", "promises", "R6", "remotes", "rlang", "rprojroot", "rsconnect", "rstudioapi", "semver", "testthat", "usethis", "whisker", "zoo"]
RUN ["installGithub.r", "r-lib/desc@7c12d369c202018dfc3dfa3f975f03c8b6c18437", "RcppCore/Rcpp@a669a19e7ac51a072735279d92e1c6093a726743", "richfitz/stevedore@30d359fcfc54e5f5469c7e126b990cb3fc91cd69", "tidyverse/stringr@0b5a4c443fa448ecd65e24d12071fa8231a23817", "trestletech/plumber@e7db15a839b18a2734b489350d62821c8a7176f7"]
WORKDIR /payload/
CMD ["R"]
