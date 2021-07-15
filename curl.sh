#!/bin/bash

export AUTH_TOKEN=$(gcloud auth print-access-token)
export CDAP_ENDPOINT=$(gcloud beta data-fusion instances describe --location=asia-southeast2 --format="value(apiEndpoint)" alevz-fusion)
curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDF_API}/v3/namespaces/default/apps/DataFusionQuickstart" -d "@./DataFusionQuickstart-cdap-data-pipeline.json""

