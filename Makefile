REGISTRY ?= plaiful.org
CUDA_VERSION=11.7.0
CUDNN_VERSION=8
UBUNTU_VERSION=22.04

docker-build-cpu:
	docker build -t ${REGISTRY}/job --build-arg BASE_IMAGE=ubuntu:22.04  . 

docker-build-cuda:
	docker build -t ${REGISTRY}/job-cuda --build-arg BASE_IMAGE=nvidia/cuda:${CUDA_VERSION}-cudnn${CUDNN_VERSION}-devel-ubuntu${UBUNTU_VERSION}  . 
