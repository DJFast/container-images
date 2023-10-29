#rstudio docker container-image
#Dockerfile Author: David J Fast

FROM rocker/rstudio:4.1.3

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    libxml2-dev \
    liblzma-dev \
    libcurl4-openssl-dev \
    zlib1g \
    zlib1g-dev \
    libbz2-dev
    

COPY ./build /tmp
RUN Rscript '/tmp/build_rstudio.R'

WORKDIR /tmp
CMD ["/init"]