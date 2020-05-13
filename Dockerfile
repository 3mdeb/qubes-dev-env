FROM fedora:31

RUN dnf -y install \
    createrepo \
    debootstrap \
    devscripts \
    dpkg-dev \
    dialog \
    e2fsprogs \
    git \
    make \
    perl-open \
    perl-Digest-MD5 \
    perl-Digest-SHA \
    python2 \
    python3-pyyaml \
    python3-sh \
    rpm-build \
    rpm-sign \
    rpmdevtools \
    wget \
    which

# the build system requires regular user with passwordless sudo access
RUN useradd -ms /bin/bash -u 1000 builder && \
    usermod -aG wheel builder && \
    sed -e 's/^%wheel/#%wheel/g' -e 's/^# %wheel/%wheel/g' -i /etc/sudoers
