#!/bin/bash
if [ $# -gt 0 ]; then
    sudo /home/ubuntu/bin/minikube service list | grep voyager | head -n 1 | sed 's/http/https/' | awk '{print "Grey Matter dashboard is running at:", $6}'
else
    minikube -p gm-deploy service list | grep voyager | head -n 1 | sed 's/http/https/' | awk '{print "Grey Matter dashboard is running at:", $6}'
fi
