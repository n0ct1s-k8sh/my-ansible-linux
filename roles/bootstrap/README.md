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
  - `swappiness_value` (int): [Value for `vm.swappiness` sysctl parameter.](https://docs.kernel.org/admin-guide/sysctl/vm.html#swappiness)
  - `zram_device_name` (str): Name for zRAM device.
  - `zram_compression` (str): [Compression algorithm](https://www.kernel.org/doc/html/next/admin-guide/blockdev/zram.html#select-compression-algorithm).
  - `zram_priority` (int): Swap priority.
  - `zram_minimal_size` (str): Minimal size parameter in `min(ram / 2, x)`.

### `vars/main/main.yml`
- Vars for common packages across distributions:
  - `dev_packages` (list): Set of development tools.
  - `net_packages` (list): Set of network tools.
  - `hw_monitor_packages` (list): Set of hardware monitoring and system info tools.
  - `compression_packages` (list): Set of file compression tools.

- Vars for zRAM:
  - `zram_filesystem` (str): `fs-type` parameter.
  - `zram-config-file` (str): zRAM generator config file path.

### Debian hosts specific vars (`vars/main/debian.yml`)
- `debian_pkgs` (list):
  - `initial` (list): Most important packages to install.
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
