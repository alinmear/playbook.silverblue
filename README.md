# playbook.silverblue

This playbook automates the provisioning of the modular fedora silverblue workstation. The playbook implements two roles for this tasks, base and podman.

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

## Configuration

The Base rule has some proper defaults; if you want to overwrite them, do that within `vars/base.yml` or on a per host base within the inventory.

## NOTE

This playbook is still in development.