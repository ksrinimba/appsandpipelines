#!/bin/bash

# Define the number of times to run the command
num_iterations=100

mycommand () {
    kubectl --kubeconfig /Users/srinivaskambhampati/apple-support/apple-config-dev -n opsmx exec oes-spinnaker-halyard-0 -- curl -X POST http://spin-fiat:7003/roles/sync &
}

# Loop through the desired number of iterations
for ((i=1; i<=$num_iterations; i++))
do
    echo "Iteration $i:"
    #date -Ins
    time mycommand
    #date -Ins
    echo
done
