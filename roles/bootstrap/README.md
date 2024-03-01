bootstrap
=========
This role manages the essential packages and configs to initialize a Linux environment.

Requirements
------------
- For Debian hosts:
  - `python3-apt` for the [ansible.builtin.apt](https://docs.ansible.com/ansible/8/collections/ansible/builtin/apt_module.html) module.

Role Variables
--------------
### `defaults/main.yml`
- Vars for zRAM:
  - `bootstrap_swappiness` (int): [Value for `vm.swappiness` sysctl parameter.](https://docs.kernel.org/admin-guide/sysctl/vm.html#swappiness)

### `vars/main/main.yml`
- `bootstrap_pkgs` (dict) &rarr; Common packages across distributions:
  - `base` (list): Set of development tools.
  - `net` (list): Set of network tools.
  - `hwmon` (list): Set of hardware monitoring and system info tools.
  - `compression` (list): Set of file compression tools.
  - `ntfs` (str): [ntfs-3g package.](https://github.com/tuxera/ntfs-3g)

- `bootstrap_zram` (dict) &rarr; Vars for zRAM:
  - `fs` (str): `fs-type` parameter.
  - `cfg_file` (str): zRAM generator config file path.
  - `device` (str): Name for zRAM device.
  - `priority` (int): Swap priority.
  - `min_size` (str): Minimal size parameter in `min(ram / 2, x)`.
  - `compression` (str): [Compression algorithm](https://www.kernel.org/doc/html/next/admin-guide/blockdev/zram.html#select-compression-algorithm).

### Debian hosts specific vars (`vars/main/debian.yml`)
- `bootstrap_debian_pkgs` (list):
  - `base` (list): Most important packages to install.
  - `net` (list): Set of network tools.
  - `compression` (list): Set of file compression tools.

Example Playbook
----------------
```
- hosts: mymachine
  roles:
      - bootstrap
```

License
-------
BSD-3-Clause
