#fastqc container image
#Dockerfile Author: David J Fast

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

ARG FASTQC_VERSION=0.12.1

RUN apt-get update && apt-get install -y \
    wget \
    default-jre \
    perl \
    unzip 

RUN mkdir /app 
WORKDIR /tmp

#install fastqc
RUN wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v${FASTQC_VERSION}.zip \
    && unzip fastqc_v${FASTQC_VERSION}.zip \
    && rm fastqc_v${FASTQC_VERSION}.zip \
    && mv FastQC /app 
ENV PATH="/app/FastQC/:${PATH}" 

CMD [ 'fastqc' ]