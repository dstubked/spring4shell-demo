#!/bin/bash

echo "kubectl expose deployment spring4shell --type=LoadBalancer --port=8080"
kubectl expose deployment spring4shell --type=LoadBalancer --port=8080
