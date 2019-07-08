# mucus: portable cross-compiler, cross-tester VM's for GNU/Linux binaries

```text
{*}
```

# EXAMPLE

```console
$ cd mips64el/test
$ vagrant up
$ vagrant ssh -c "cd /vagrant && mips64el-linux-gnuabi64-g++ -o hello hello.cpp && ./hello"
Hello World!
```

# VAGRANT CLOUD

* https://app.vagrantup.com/mcandre/boxes/mucus-mips64el
* https://app.vagrantup.com/mcandre/boxes/mucus-mipsel

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
