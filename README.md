# mucus: portable cross-compiler, cross-tester VM's for GNU/Linux binaries

```text
{*}
```

# EXAMPLE

```console
$ cd arm64/test
$ vagrant up
$ vagrant ssh -c "cd /vagrant && aarch64-linux-gnu-g++ -o hello hello.cpp && ./hello"
Hello World!
```

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/mucus-alpha
* https://app.vagrantup.com/mcandre/boxes/mucus-arm64
* https://app.vagrantup.com/mcandre/boxes/mucus-armel
* https://app.vagrantup.com/mcandre/boxes/mucus-armhf
* https://app.vagrantup.com/mcandre/boxes/mucus-hppa
* https://app.vagrantup.com/mcandre/boxes/mucus-mips64el
* https://app.vagrantup.com/mcandre/boxes/mucus-mipsel
* https://app.vagrantup.com/mcandre/boxes/mucus-powerpc
* https://app.vagrantup.com/mcandre/boxes/mucus-ppc64
* https://app.vagrantup.com/mcandre/boxes/mucus-ppc64el
* https://app.vagrantup.com/mcandre/boxes/mucus-riscv64
* https://app.vagrantup.com/mcandre/boxes/mucus-sh4
* https://app.vagrantup.com/mcandre/boxes/mucus-sparc64

# ABOUT

mucus offers cross-compilation and cross-testing of GNU/Linux binaries with convenient virtual machines for a handful of architectures. mucus is powered by assorted g++ toolchains and qemu-user-static.

# RUNTIME REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)

## Recommended

* [VirtualBox](https://www.virtualbox.org/)
* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back)
* [Ruby](https://www.ruby-lang.org/en/) (for rake)

# BUILD AND TEST BOXES

```console
$ rake boxes import test
```

# PUBLISH

```console
$ rake publish
```

# CLEAN

```console
$ rake clean
```
