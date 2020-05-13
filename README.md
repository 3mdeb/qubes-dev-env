# qubes-dev-env

QubesOS build / dev env in a Docker container

## Usage

### Building

* Clone [qubes-builder](git@github.com:QubesOS/qubes-builder.git)

```shell
$ git clone git@github.com:QubesOS/qubes-builder.git
```

* Start the container

```shell
$ ./qubes-dev-env/run.sh
```

* Copy config

```shell
(docker)$ cp qubes-dev-env/configs/builder.conf .
```

* Get build sources

```shell
(docker)$ make get-sources
```

* Apply workaround for release detection during build

```shell
(docker)$ cd qubes-src/builder-rpm
(docker)$ git apply ../../qubes-dev-env/patches/builder-rpm-release-detection-workaround.patch
```

* Build

```shell
(docker)$ make qubes
```
