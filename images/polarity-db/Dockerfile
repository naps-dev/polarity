FROM bitnami/postgresql:13.1.0

USER root

RUN apt-get update && \
    apt-get install -y make && \
    apt-get install -y gcc && \ 
    curl -L https://github.com/RhodiumToad/ip4r/archive/refs/tags/2.4.1.tar.gz --output ip4r-2.4.1.tar.gz && \
    tar -xvzf ip4r-2.4.1.tar.gz && \
    cd ip4r-2.4.1 && \
    make && \
    make install

USER 1001