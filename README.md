# python-protobuf
The dockerfiles to create a python2.7-stretch container with protobuf 2.6.

This repo contains no company IP data so it is okay to share publicly.

[Docker hub repo](https://hub.docker.com/repository/docker/zhjy/python-protobuf)


This image is used for containers require protobuf 2.6 run-time environment (e.x. Xenotime). Protobuf is compiled using specific distro for size and dependency consideration.

## Build an image from scratch

Open the directory you would like to build, run

```docker build -t python-protobuf:<tagname> . ```

## Use other base image

You can create a new folder and change the line of base image, for example

```FROM python:2.7-stretch```

Make sure python 2.7 is installed in the image and it comes with essential build tools (gcc, cmake etc.)

## Push image

Make sure login using the account that holding the repo.

Then

```docker push zhjy/python-protobuf:tagname```

The updated image should be visible on docker hub repo.