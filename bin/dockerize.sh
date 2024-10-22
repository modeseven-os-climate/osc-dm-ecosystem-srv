#!/bin/bash

# Define the directories
directories=(
    "osc-dm-product-srv"
    "osc-dm-search-srv"
    "osc-dm-proxy-srv"
    "osc-dm-monitor-srv"
    "osc-dm-registrar-srv"
)

# Optional parameters to pass to dockerize script
param1=$1
param2=$2

# Iterate over each directory
for dir in "${directories[@]}"; do
    echo "Processing directory: $dir"

    # Check if the directory exists
    if [ -d "$dir" ]; then
        cd "$dir" || exit

        # Source the environment script
        if [ -f "bin/environment.sh" ]; then
            echo "Sourcing bin/environment.sh"
            source bin/environment.sh
        else
            echo "bin/environment.sh not found in $dir"
        fi

        # Run the dockerize script with or without parameters
        if [ -f "bin/dockerize.sh" ]; then
            if [[ -n "$param1" && -n "$param2" ]]; then
                echo "Running bin/dockerize.sh with params: $param1 $param2"
                ./bin/dockerize.sh "$param1" "$param2"
            elif [[ -n "$param1" ]]; then
                echo "Running bin/dockerize.sh with param: $param1"
                ./bin/dockerize.sh "$param1"
            else
                echo "Running bin/dockerize.sh without parameters"
                ./bin/dockerize.sh
            fi
        else
            echo "bin/dockerize.sh not found in $dir"
        fi

        # Go back to the original directory
        cd - || exit
    else
        echo "Directory $dir does not exist."
    fi
done