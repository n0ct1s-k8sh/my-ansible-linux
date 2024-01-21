# my-ansible-linux
These are my handmade Ansible roles made for deploy a fully operational Linux environment for Desktop/Daily driver use or Server.

## Roles
- [**bootstrap**](roles/bootstrap) &rarr; Prepare a Linux environment for anything.
    - Configure the package manager.
    - Upgrade all packages.
    - Install the essential tools and libraries.
    - Configure swap and zRAM.
- [**gnome**](roles/gnome) &rarr; Install and configure [GNOME Desktop Environment](https://www.gnome.org/).
    - [Extensions support](https://extensions.gnome.org/).
    - [Dconf](https://wiki.gnome.org/Projects/dconf).
    - [Kvantum](https://github.com/tsujan/Kvantum/tree/master/Kvantum) theming for QT.
- [**fonts**](roles/fonts) &rarr; Install fonts for any desktop environment.
- [**multimedia**](roles/multimedia) &rarr; Install multimedia tools, players and codecs.
- [**docker**](roles/docker) &rarr; Install [Docker (Community Edition)](https://docs.docker.com/engine/install/) container engine.
- [**kvm**](roles/kvm) &rarr; Install and configure a [KVM](https://www.linux-kvm.org/page/Main_Page) + [Libvirt](https://libvirt.org/) virtualization environment.
- [**virtualbox**](roles/virtualbox) &rarr; Install [VirtualBox](https://www.virtualbox.org/) virtualization environment.
- [**java**](roles/java) &rarr; Install [OpenJDK](https://openjdk.org) runtime environment and development kit.
- [**pipkgs**](roles/pipkgs) &rarr; Install some [pip](https://pypi.org/) packages.
- [**nodejs**](roles/nodejs) &rarr; Install [NodeJS](https://nodejs.org/) runtime environment.
- [**wine**](roles/wine) &rarr; Install [Wine](https://www.winehq.org/).
- [**vscode**](roles/vscode) &rarr; Install [VSCode](https://code.visualstudio.com/) and some [extensions](https://marketplace.visualstudio.com/VSCode).
- [**anydesk**](roles/anydesk) &rarr; Install [AnyDesk](https://anydesk.com/).
- [**teamviewer**](roles/teamviewer) &rarr; Install [TeamViewer](https://www.teamviewer.com/).
- [**mytools**](roles/mytools) &rarr; Install some tools and programs.

## License
This entire repository is licensed under the BSD license.

## About me
Hi! I'm n0ct1s, a Junior Site Reliability Engineer, geek and tech enthusiast from Cartagena (Southeast Spain). Also I play the oboe as my main discipline in the Professional Music School of my city. I enjoy going for a walk to rest and disconnect as sometimes my mind needs to shut down like my production services.