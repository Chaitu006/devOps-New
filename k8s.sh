#!/bin/bash

# setup
minikube version
minikube start

kubectl version

kubectl get nodes

# deploy app
kubectl run kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080

# list 
kubectl get deployments

#view
kubectl proxy

#test
curl http://localhost:8001/version

# get pod name

export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
echo Name of the Pod: $POD_NAME

# view container logs 
kubectl logs $POD_NAME

# executing command on container
kubectl exec $POD_NAME env

kubectl exec -ti $POD_NAME bash

# Get current service
kubectl get services

# run public service
kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080

# Assign NODE_PORT
export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
echo NODE_PORT=$NODE_PORT

# test
curl $(minikube ip):$NODE_PORT



