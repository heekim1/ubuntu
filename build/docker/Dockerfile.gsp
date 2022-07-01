FROM ubuntu:18.04

ENV LANG en_US.UTF-8
ENV LANGUATE en_US:en
ENV DEBIAN_FRONTEND noninteractive

ENV analysisdir /home/analysis

RUN apt-get update && \
    groupadd -g 5000 runner && \
    useradd -m -d /home/analysis -u 5000 -g 5000 -s /bin/bash runner

ADD .bashrc /home/analysis

WORKDIR \$analysisdir
