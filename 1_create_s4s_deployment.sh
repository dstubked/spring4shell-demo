#!/bin/bash
echo "kubectl create deployment spring4shell --image=stanhoe/spring4shell:latest --port=8080"
kubectl create deployment spring4shell --image=stanhoe/spring4shell:latest --port=8080
