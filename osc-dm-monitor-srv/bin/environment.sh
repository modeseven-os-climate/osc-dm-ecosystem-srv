#!/bin/bash

#####
#
# environment.sh - Setup common environment variables
#
# Author: Eric Broda, eric.broda@brodagroupsoftware.com, August 17, 2023
#
# Parameters:
#   N/A
#
#####

if [ -z ${HOME_DIR+x} ] ; then
    echo "HOME_DIR environment variable has not been set (should be setup in your profile)"
    exit 1
fi

export ROOT_DIR="$HOME_DIR/osc-dm-ecosystem-srv"
export PROJECT="osc-dm-monitor-srv"
export PROJECT_DIR="$ROOT_DIR/$PROJECT"

"$PROJECT_DIR"/bin/show.sh
