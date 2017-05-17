#!/bin/bash

#ROOT_ADDRESS=${1:-localhost}
ROOT_ADDRESS=${1:-10.244.8.2}

fly -t docker login -c http://${ROOT_ADDRESS}:8080
#fly -t docker login -c http://${ROOT_ADDRESS}:8080 -u=concourse -p=changeme
