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
# Hash 7618
# Hash 9612
# Hash 7921
# Hash 4439
# Hash 1383
# Hash 4067
# Hash 9322
# Hash 1318
# Hash 3881
# Hash 8651
# Hash 6969
# Hash 1660
# Hash 9800
# Hash 3866
# Hash 1551
# Hash 9587
# Hash 4015
# Hash 8540
# Hash 5525
# Hash 8650
# Hash 8564
# Hash 2867
# Hash 1583
# Hash 7235
# Hash 3608
# Hash 7123
# Hash 6623
# Hash 1760
# Hash 8315
# Hash 8206
# Hash 4629
# Hash 8800
# Hash 4221
# Hash 2790
# Hash 8854
# Hash 2374
# Hash 2304
# Hash 6894
# Hash 8138
# Hash 8920
# Hash 1523
# Hash 6536
# Hash 5926
# Hash 5557
# Hash 8657
# Hash 7637
# Hash 6353
# Hash 9653
# Hash 8481
# Hash 2144
# Hash 9603
# Hash 9933
# Hash 8948
# Hash 2157
# Hash 2001
# Hash 8207
# Hash 9153
# Hash 7442
# Hash 1210
# Hash 6845
# Hash 7218
# Hash 2964
# Hash 8733
# Hash 4088
# Hash 5455
# Hash 1052
# Hash 6931
# Hash 6801
# Hash 1629
# Hash 8572
# Hash 5038
# Hash 4010
# Hash 5027
# Hash 3187
# Hash 7776
# Hash 8902
# Hash 6326
# Hash 3601
# Hash 3859
# Hash 6508
# Hash 7843
# Hash 3338
# Hash 2351
# Hash 8459
# Hash 2487
# Hash 7671
# Hash 5879
# Hash 9208
# Hash 4980
# Hash 9296
# Hash 6665
# Hash 1207
# Hash 8518
# Hash 4457
# Hash 7396
# Hash 8547
# Hash 4674
# Hash 3440
# Hash 2054
# Hash 4606
# Hash 2930
# Hash 3164
# Hash 3438
# Hash 2363
# Hash 5917
# Hash 8161
# Hash 2894
# Hash 8991
# Hash 4542
# Hash 1735
# Hash 7155
# Hash 9619
# Hash 2698
# Hash 3824
# Hash 9792
# Hash 1715
# Hash 9010
# Hash 6509
# Hash 2719
# Hash 9673
# Hash 3099
# Hash 9187
# Hash 7804
# Hash 8230
# Hash 8079
# Hash 4668
# Hash 1613
# Hash 7367
# Hash 2422
# Hash 4629
# Hash 9415
# Hash 3303
# Hash 6105
# Hash 2359
# Hash 6187
# Hash 9345
# Hash 5163
# Hash 4740
# Hash 7252
# Hash 5912
# Hash 9362
# Hash 2162
# Hash 8809
# Hash 8005
# Hash 7811
# Hash 4803
# Hash 2813
# Hash 5764
# Hash 9728
# Hash 1603
# Hash 4701
# Hash 9707
# Hash 9658
# Hash 2271
# Hash 4129
# Hash 9567
# Hash 8103
# Hash 7125
# Hash 2306
# Hash 7658
# Hash 2126
# Hash 3465
# Hash 6424
# Hash 3137
# Hash 4162
# Hash 7094
# Hash 8014
# Hash 8425
# Hash 4972
# Hash 2566
# Hash 6283
# Hash 5503
# Hash 6574
# Hash 4305
# Hash 2255
# Hash 8629
# Hash 3777
# Hash 3222
# Hash 3816
# Hash 2621
# Hash 2561
# Hash 6096