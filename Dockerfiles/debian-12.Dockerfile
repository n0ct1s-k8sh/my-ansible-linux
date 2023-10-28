FROM debian:bookworm

LABEL maintainer="n0ct1s-k8sh <fco.tomas.ol@gmail.com>"
LABEL build_date="2023-09-16"

ENV container docker

RUN DEBIAN_FRONTEND=noninteractive apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y systemd systemd-sysv python3-all sudo
RUN DEBIAN_FRONTEND=noninteractive apt clean
RUN DEBIAN_FRONTEND=noninteractive apt autoclean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN cd /lib/systemd/system/sysinit.target.wants && rm $(ls | grep -v systemd-tmpfiles-setup)
RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/basic.target.wants/* \
    /lib/systemd/system/anaconda.target.wants/* \
    /lib/systemd/system/plymouth* \
    /lib/systemd/system/systemd-update-utmp*

VOLUME [ "/sys/fs/cgroup" ]
ENTRYPOINT [ "/lib/systemd/systemd" ]