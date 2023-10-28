# Dockerfiles for Molecule Docker-in-Docker testing

These dockerfiles are used for testing each role in a Docker container. It is required to build them before running any molecule testing scenario.

## Why do I need this?

- These images are based on the official distribution container image.
- They came with SystemD preinstalled and ready to run.
- They can be used in a Docker-in-Docker devcontainer for a perfect isolated dev environment.

## Usage
- First build the image: `docker build --no-cache -t ansibilinux:distro-VERSION -f distroVERSION.Dockerfile .`
- Run with the following flags (already defined in the `molecule.yml` manifest):
    - ``

## List of supported OS

- Debian 12 Bookworm.