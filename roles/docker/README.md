docker
=========

Docker installation & configuration.

Requirements
------------

- For Debian hosts:
  - `python3-apt` for the [ansible.builtin.apt](https://docs.ansible.com/ansible/8/collections/ansible/builtin/apt_module.html) module.
  - `gpg` for the [ansible.builtin.apt_key](https://docs.ansible.com/ansible/8/collections/ansible/builtin/apt_key_module.html) module.
- A fully functional Python 3.X environment with pip.

Role Variables
--------------
### `defaults/main.yml`
- `docker_user` (str) &rarr; Docker ops user to create.

### `vars/main.yml`
- `docker_group` (str) &rarr; Docker engine user.
- `docker_repo_url` (dict) &rarr; Docker repository URL for each supported distro:
  - `debian` (str)
- `docker_repo_key_url` (dict) &rarr; Docker repository key file URL for each supported distro:
  - `debian` (str)
- `docker_repo_key_file` (str) &rarr; Docker repository key file for dearmored output.
- `docker_pkgs` (list) &rarr; Docker repo packages to install.
- `docker_python_libs` (list) &rarr; Docker Python libraries to install for future deployments with Ansible modules.

Example Playbook
----------------

```
- hosts: mymachine
  roles:
      - docker
```

License
-------

BSD-3-Clause
