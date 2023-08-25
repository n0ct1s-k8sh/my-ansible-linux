# Build with: docker build -t ansiblinux-fedora:38 .
FROM fedora:38

USER root

RUN dnf install -y systemd

ENTRYPOINT [ "/usr/lib/systemd/systemd" ]