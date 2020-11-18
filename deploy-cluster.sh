#!/bin/bash

gcloud beta container clusters create "cloudhours" \
--zone "europe-west1-d" \
--no-enable-basic-auth \
--release-channel "rapid" \
--cluster-version "1.18.10-gke.1500" \
--machine-type "e2-standard-2" \
--image-type "UBUNTU" \
--disk-type "pd-standard" \
--disk-size "100" \
--metadata disable-legacy-endpoints=true \
--scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" \
--num-nodes "3" \
--enable-stackdriver-kubernetes \
--enable-ip-alias \
--default-max-pods-per-node "110" \
--no-enable-master-authorized-networks \
--addons HorizontalPodAutoscaling,HttpLoadBalancing \
--enable-autoupgrade \
--enable-autorepair \
--max-surge-upgrade 1 \
--max-unavailable-upgrade 0 \
--enable-shielded-nodes
