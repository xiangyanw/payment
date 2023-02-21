#!/bin/bash

#if [[ $# -ne 1 ]]; then
#  echo "Please provide an image tag!"
#  exit 1
#fi

SCRIPT_DIR=$(dirname "$0")

export GROUP="625011733915.dkr.ecr.ap-northeast-1.amazonaws.com/microservices-demo"

dt=`date +%Y%m%d-%H%M%S`
export COMMIT="lattice-${dt}"

bash ${SCRIPT_DIR}/build.sh
