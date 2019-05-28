ansible=ansible-playbook main.yml

all: base podman

base:
	sudo $(ansible)

ostree:
	sudo $(ansible) --tags base_ostree

nvidia:
	sudo $(ansible) --tags base_nvidia 

lutris:
	sudo $(ansible) --tags base_lutris 

flatpaks:
	sudo $(ansible) --tags base_flatpaks

configure:
	sudo $(ansible) --tags base_configure

vagrant:
	sudo $(ansible) --tags podman_vagrant

.PHONY: all