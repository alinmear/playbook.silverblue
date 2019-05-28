ansible=ansible-playbook main.yml
hostfile=localhost.ini

check:
	${ansible} -i ${hostfile} -C -K

all: base podman

base:
	$(ansible) -i ${hostfile} -K

ostree:
	$(ansible) --tags base_ostree -i ${hostfile} -K

nvidia:
	$(ansible) --tags base_nvidia -i ${hostfile} -K

lutris:
	$(ansible) --tags base_lutris -i ${hostfile} -K

flatpaks:
	$(ansible) --tags base_flatpaks -i ${hostfile} -K

configure:
	$(ansible) --tags base_configure -i ${hostfile} -K

vagrant:
	sudo $(ansible) --tags podman_vagrant

.PHONY: all