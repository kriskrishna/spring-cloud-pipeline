#!/bin/bash

PIPELINE_NAME=${1:-apps-movie-fun-code}
ALIAS=${2:-concourse-lab}
CREDENTIALS=${3:-credentials.yml}

echo y | fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c pipeline.yml -l "${CREDENTIALS}"
