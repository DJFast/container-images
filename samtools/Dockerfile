#samtools container-image
#Dockerfile Author: David J Fast

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

ARG HTSLIB_VERSION=1.18
ARG SAMTOOLS_VERSION=1.18
ARG BCFTOOLS_VERSION=1.18

RUN apt-get update && apt-get install -y \
    build-essential \
    automake \
    autoconf \
    zlib1g \ 
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    curl \
    libssl-dev \
    libncurses5-dev \
    bzip2 \
    wget

RUN mkdir /app 
WORKDIR /tmp

#install htslib
RUN wget https://github.com/samtools/htslib/releases/download/${HTSLIB_VERSION}/htslib-${HTSLIB_VERSION}.tar.bz2 \
    && tar xvf htslib-${HTSLIB_VERSION}.tar.bz2 \
    && cd htslib-${HTSLIB_VERSION} \
    && autoreconf -i \
    && ./configure --prefix=/user/local \
    && make \
    && make install \
    && cd .. \
    && mv htslib-${HTSLIB_VERSION} /app \
    && rm -rf htslib-${HTSLIB_VERSION}.tar.bz2 
ENV PATH="/app/htslib-${HTSLIB_VERSION}/:${PATH}" 

#install samtools 
RUN wget https://github.com/samtools/samtools/releases/download/${SAMTOOLS_VERSION}/samtools-${SAMTOOLS_VERSION}.tar.bz2 \
    && tar xvf samtools-${SAMTOOLS_VERSION}.tar.bz2 \
    && cd samtools-${SAMTOOLS_VERSION} \
    && autoheader \
    && autoconf -Wno-syntax \
    && ./configure --prefix=/user/local \
    && make \
    && make install \
    && cd .. \
    && mv samtools-${SAMTOOLS_VERSION} /app \
    && rm -rf samtools-${SAMTOOLS_VERSION}.tar.bz2
ENV PATH="/app/samtools-${SAMTOOLS_VERSION}/:${PATH}" 

#install bcftools 
RUN wget https://github.com/samtools/bcftools/releases/download/${BCFTOOLS_VERSION}/bcftools-${BCFTOOLS_VERSION}.tar.bz2 \
&& tar xvf bcftools-${BCFTOOLS_VERSION}.tar.bz2 \
&& cd bcftools-${BCFTOOLS_VERSION} \
    && ./configure --prefix=/user/local \
    && make \
    && make install \
    && cd .. \
    && mv bcftools-${BCFTOOLS_VERSION} /app \
    && rm -rf bcftools-${BCFTOOLS_VERSION}.tar.bz2
ENV PATH="/app/bcftools-${BCFTOOLS_VERSION}/:${PATH}" 

CMD [ 'samtools' , 'bcftools']