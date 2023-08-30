# Build with: docker build -t ansiblinux:fedora-38 .
FROM fedora:38

ENV container docker

STOPSIGNAL SIGRTMIN+3

USER root

RUN dnf install -y systemd

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

HEALTHCHECK --interval=3s --timeout=2m --start-period=4s --retries=15 CMD ["/usr/bin/systemctl", "is-system-running", "--quiet"]

ENTRYPOINT [ "/usr/lib/systemd/systemd", "log-level=info", "unit=sysinit.target" ]