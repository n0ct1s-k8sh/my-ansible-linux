docker
=========

Docker installation & configuration.

Requirements
------------

- For Debian hosts:
  - `python3-apt` for the [ansible.builtin.apt](https://docs.ansible.com/ansible/8/collections/ansible/builtin/apt_module.html) module.
  - `gpg` for the [ansible.builtin.apt_key](https://docs.ansible.com/ansible/8/collections/ansible/builtin/apt_key_module.html) module.

Role Variables
--------------



Dependencies
------------

- [**bootstrap role**](../bootstrap)


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
