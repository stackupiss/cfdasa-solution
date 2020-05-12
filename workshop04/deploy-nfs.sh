#!/bin/bash
export NAMESPACE="nfs-server"
kubectl create ns ${NAMESPACE}
helm install nfs-server stable/nfs-server-provisioner -f nfs-values.yaml -n ${NAMESPACE}
