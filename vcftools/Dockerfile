#vcftools
#Dockerfile author: David J Fast

FROM ubuntu:20.04

ARG VCFTOOLS_VERSION=0.1.16

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    libz-dev \
    pkg-config \
    wget

RUN mkdir /app
WORKDIR /tmp

RUN wget https://github.com/vcftools/vcftools/releases/download/v0.1.16/vcftools-${VCFTOOLS_VERSION}.tar.gz \
    && tar xvf vcftools-${VCFTOOLS_VERSION}.tar.gz \
    && cd vcftools-${VCFTOOLS_VERSION} \
    && ./configure \
    && make \
    && make install
    && cd .. \
    && mv vcftools-${VCFTOOLS_VERSION} /app \
    && rm vcftools-${VCFTOOLS_VERSION}.tar.gz
ENV PATH="/app/vcftools-${VCFTOOLS_VERSION}/:${PATH}"

CMD ["vcftools"]