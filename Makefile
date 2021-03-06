PWD := $(shell pwd)
APP := swal
DEV_IMAGE := ckeyer/dev:node

VERSION := $(shell cat VERSION.txt)
GIT_COMMIT := $(shell git rev-parse --short HEAD)
GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

dev:
	docker run --rm -it \
	 --name $(APP)-dev \
	 -v $(PWD):/opt/$(APP) \
	 -w /opt/$(APP) \
	 $(DEV_IMAGE) bash
