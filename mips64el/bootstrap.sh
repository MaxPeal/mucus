#!/bin/sh
sudo dpkg --add-architecture mips64el &&
    sudo apt-get update \
        --allow-releaseinfo-change && # Work around https://github.com/mcandre/packer-templates/issues/251
    sudo apt-get install -y \
        qemu-user-static \
        g++-mips64el-linux-gnuabi64 \
        libc6:mips64el \
        libstdc++6:mips64el &&
    sudo apt-get autoclean -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* \
        /var/cache/apt/pkgcache.bin \
        /var/cache/apt/srcpkgcache.bin
