#!/bin/bash

curl -X PUT -H "Authorization: Bearer ${AUTH_TOKEN}" "${CDF_API}/v3/namespaces/default/apps/DataFusionQuickstart" -d "@./DataFusionQuickstart-cdap-data-pipeline.json"
