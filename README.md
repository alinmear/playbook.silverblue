# playbook.silverblue

This playbook automates the provisioning of the modular fedora silverblue and regular workstation. The playbook implements two roles for this tasks, base and podman.

## Getting started

If you are already on a silverblue host you have several choices installing ansible:

a.) Install it via podman (ssh needs to be configured)
b.) Create a pyenv with `ansible` and `selinux`
c.) Extend the base os via rpm-ostree (easiest)

```sh
sudo rpm-ostree install ansible
```

After that you can take use of the `Makefile`.

e.g. run the whole playbook: `sudo make`

The playbook can be run in check mode with `make check`

## Configuration

By default `make` works mit the localhost.ini inventory. In this file you need to set the `os` variable to either `silverblue` or `workstation`.
If you want to manage multiple hosts, create an own host inventory and run the playbook with `make hostfile=name-of-your-inventory`

The Base rule has some proper defaults; if you want to overwrite them, do that within `vars/base.yml` or on a per host base within the inventory.

## NOTE

This playbook is still in development.