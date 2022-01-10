FROM ubuntu:20.04

LABEL maintainer="Cosmin Catalin Sanda"

ENV DEBIAN_FRONTEND=noninteractive \
    LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ninja-build \
    ccache \
    libopenblas-dev \
    libopencv-dev \
    git \
    vim \
    openjdk-8-jdk \
    maven \
    cmake \
    python3 \
    gfortran && \
    rm -rf /var/lib/apt/lists/*

RUN update-java-alternatives --set java-1.8.0-openjdk-amd64
