#!/bin/sh
    sudo printf "deb http://deb.debian.org/debian/ unstable main\ndeb-src http://deb.debian.org/debian/ unstable main\n" >/etc/apt/sources.list &&
    sudo apt-get update &&
    DEBIAN_FRONTEND=noninteractive apt-get full-upgrade \
        -q \
        -y \
        -u \
        -o Dpkg::Options::="--force-confdef" &&
    sudo apt-get -y --purge autoremove &&
    sudo apt-get install -y debian-ports-archive-keyring &&
    sudo printf "deb http://deb.debian.org/debian-ports unstable main\ndeb http://deb.debian.org/debian-ports unreleased main\ndeb-src http://deb.debian.org/debian-ports unreleased main\n" >>/etc/apt/sources.list &&
    sudo apt-get update &&
    sudo dpkg --add-architecture sparc64 &&
    sudo apt-get update \
        --allow-releaseinfo-change && # Work around https://github.com/mcandre/packer-templates/issues/251
    sudo apt-get install -y \
        qemu-user-static \
        g++-sparc64-linux-gnu \
        libc6:sparc64 \
        libstdc++6:sparc64 &&
    sudo apt-get autoclean -y &&
    sudo apt-get clean -y &&
    sudo rm -rf /var/lib/apt/lists/* \
        /var/cache/apt/pkgcache.bin \
        /var/cache/apt/srcpkgcache.bin
