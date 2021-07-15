#!/bin/bash

curl PUT -H "Authorization: Bearer ${AUTH_TOKEN}" \
  -T DataFusionQuickstart-cdap-data-pipeline.json \
  "${CDAP_ENDPOINT}/v3/namespaces/default/apps/newpipe"
