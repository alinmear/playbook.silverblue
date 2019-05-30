# playbook.silverblue

This playbook automates the provisioning of the modular fedora silverblue and regular workstation. The playbook implements two roles for this tasks, base and podman.

## Getting started

If you are already on a silverblue host you have several choices installing ansible:

a.) Install it via podman (ssh needs to be configured)
b.) Create a pyenv with `ansible` and `selinux`
c.) Extend the base os via rpm-ostree/dnf (easiest)

```sh
sudo rpm-ostree install ansible
```

After that you can take use of the `Makefile`.

e.g. run the whole playbook: `make`

The playbook can be run in check mode with `make check`

## Configuration

By default `make` works mit the localhost.ini inventory. In this file you need to set the `os` variable to either `silverblue` or `workstation`.
If you want to manage multiple hosts, create an own host inventory and run the playbook with `make hostfile=name-of-your-inventory`

The Base rule has some proper defaults; if you want to overwrite them, do that within `vars/base.yml`, on a group base in `group_vars/os_workstation.yml`/`group_vars/os_silverblue.yml` or on a per host base within the inventory.

## Packages

The base packages can be set with the `basepkg` variable. This will overwrite the default.
Optional packages can be set with the variable `optpkg`

## Flatpak bundles

The Flatpaks are grouped in categories, you can disable the whole category with

`flatpak-<bundlename>: false`

overwrite the default with

`flatpak_bundle_<bundlename>`

or add additional flatpaks with 

`flatpak_bundle_<bundlename_extra`

For a list of bundles take a look in `roles/base/defaults/main.yml`

## Dconf/Gsettings

You can either place a custom gsettings dict or add additional entries with `gsettings_extra`.

## NOTE

This playbook is still in development.