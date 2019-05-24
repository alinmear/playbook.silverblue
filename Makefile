all: base podman

base:
	sudo $(ansible) 

nvidia:
	sudo $(ansible) --tags nvidia 

lutris:
	sudo $(ansible) --tags lutris 

.PHONY: all