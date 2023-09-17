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
- Non-specific (`main.yml`):
  - `swappiness_value` (int) -> `10`
    - [Value for `vm.swappiness` sysctl parameter.](https://docs.kernel.org/admin-guide/sysctl/vm.html#swappiness)
  - `zram` (list):
    - `device_name` (str) -> `zram0`
    - `compression` (str) -> `lzo-rle`
      - [zRAM compression algorithm](https://www.kernel.org/doc/html/next/admin-guide/blockdev/zram.html#select-compression-algorithm).
      - [zRAM size parameter `compression-algorithm`.](https://github.com/systemd/zram-generator/blob/main/man/zram-generator.conf.md#options)
    - `swap_priority` (int) -> `100`
      - [zRAM size parameter `swap-priority`.](https://github.com/systemd/zram-generator/blob/main/man/zram-generator.conf.md#options)
    - `size` (str) -> `min(ram / 2, 4096)`
      - [zRAM size parameter `zram-size`.](https://github.com/systemd/zram-generator/blob/main/man/zram-generator.conf.md#options)
### `vars/main.yml`
- `zram` (list):
  - `package` (str) -> `systemd-zram-generator`
    - [SystemD zRAM Generator package name.](https://packages.debian.org/systemd-zram-generator)
  - `kernel_module` (str) -> `zram`
    - [zRAM kernel module name.](https://www.kernel.org/doc/html/next/admin-guide/blockdev/zram.html)
  - `filesystem` (str) -> `swap`
    - [zRAM size parameter `fs-type`.](https://github.com/systemd/zram-generator/blob/main/man/zram-generator.conf.md#options)
### Debian hosts vars (`vars/debian.yml`)
- `debian_pkgs` (list):
  - `initial` (list)
    - Initial packages.
  - `net` (list)
    - Network tools.
  - `hw` (list)
    - Hardware tools.
  - `compressfile` (list)
    - Compressed files tools.
  - `ntfs` (list)
    - Support for the NTFS filesystem.
- [`debian_zram`](https://wiki.debian.org/ZRam#systemd-zram-generator) (list):
  - `cfg_file` (str) -> `/etc/systemd/zram-generator.conf`
    - Debian default zram-generator config file path.

Example Playbook
----------------
```
- hosts: mymachine
  roles:
      - bootstrap
```

License
-------
BSD

Author Information
------------------
An optional section for the role authors to include contact information, or a website (HTML is not allowed).
