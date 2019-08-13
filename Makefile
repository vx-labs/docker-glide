all: docker
docker:
	docker build  -t quay.io/vxlabs/dep  .
