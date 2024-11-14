#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 5378
# Hash 5409
# Hash 5327
# Hash 6538
# Hash 6293
# Hash 7042
# Hash 9086
# Hash 9002
# Hash 6818
# Hash 2837
# Hash 3941
# Hash 4866
# Hash 2598
# Hash 8511
# Hash 7112
# Hash 3133
# Hash 2767
# Hash 2859
# Hash 7077
# Hash 6688
# Hash 9799
# Hash 2930
# Hash 6627
# Hash 9073
# Hash 9041
# Hash 4314
# Hash 6010
# Hash 8632
# Hash 2753
# Hash 9370
# Hash 5748
# Hash 4183
# Hash 2695
# Hash 8963
# Hash 8115
# Hash 2502
# Hash 4000
# Hash 3313