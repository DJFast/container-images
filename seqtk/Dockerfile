#seqtk 
#Dockerfile author: David J Fast

FROM ubuntu:20.04

ARG SEQTK_VERSION=1.4

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    zlib1g-dev \
    wget

RUN mkdir /app
WORKDIR /tmp

RUN wget https://github.com/lh3/seqtk/archive/refs/tags/v${SEQTK_VERSION}.tar.gz \
    && tar -xvf v${SEQTK_VERSION}.tar.gz \
    && cd seqtk-${SEQTK_VERSION} \
    && make \
    && cd .. \
    && mv seqtk-${SEQTK_VERSION} /app \
    && rm v${SEQTK_VERSION}.tar.gz 

ENV PATH="/app/seqtk-${SEQTK_VERSION}/:${PATH}"

CMD [ "seqtk" ]