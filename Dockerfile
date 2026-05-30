FROM ubuntu:24.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    git \
    curl \
    wget \
    unzip \
    python3 \
    python3-pip \
    gdb-multiarch \
    clangd \
    clang-format \
    ccache \
    xz-utils \
    file \
    nano \
    vim \
    && rm -rf /var/lib/apt/lists/*

# ARM GNU Toolchain
ARG ARM_TOOLCHAIN_VERSION=13.3.rel1

RUN wget -q https://developer.arm.com/-/media/Files/downloads/gnu/${ARM_TOOLCHAIN_VERSION}/binrel/arm-gnu-toolchain-${ARM_TOOLCHAIN_VERSION}-aarch64-arm-none-eabi.tar.xz \
    && tar -xf arm-gnu-toolchain-${ARM_TOOLCHAIN_VERSION}-aarch64-arm-none-eabi.tar.xz -C /opt \
    && ln -s /opt/arm-gnu-toolchain-${ARM_TOOLCHAIN_VERSION}-aarch64-arm-none-eabi /opt/arm-toolchain \
    && rm arm-gnu-toolchain-${ARM_TOOLCHAIN_VERSION}-aarch64-arm-none-eabi.tar.xz

ENV PATH="/opt/arm-toolchain/bin:${PATH}"

WORKDIR /workspace

CMD ["/bin/bash"]