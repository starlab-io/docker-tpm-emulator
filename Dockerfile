FROM ubuntu:16.04
MAINTAINER Doug Goldstein <doug@starlab.io>

# bring in dependencies
RUN apt-get update && \
    apt-get --yes --quiet install build-essential git libgmp-dev libssl-dev cmake trousers tpm-tools && \
    apt-get clean &&  \
    rm -rf /var/lib/apt/lists* /tmp/* /var/tmp/*

# tpm-emulator
RUN git clone https://github.com/PeterHuewe/tpm-emulator.git
RUN cd tpm-emulator && \
    mkdir build && \
    cd build && \
    cmake ../ && \
    make tpmd && \
    mv tpmd/unix/tpmd /usr/local/bin/ && \
    cd && \
    rm -rf tpm-emulator

# have trousers always connect to the tpm-emulator
ENV TCSD_USE_TCP_DEVICE=1
