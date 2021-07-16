import requests
import os

print(os.environ['CDAP_ENDPOINT'])


urlSuffix = '/v3/namespaces/default/apps/DataFusionQuickstart'
url = os.environ['CDAP_ENDPOINT'] + urlSuffix
print(url)

tokenAuth = 'Bearer ' + os.environ['AUTH_TOKEN']
print(tokenAuth)

headers = {'Content-Type': 'application/json', 'Authorization': tokenAuth }
print(headers)

r = requests.put(url, data=open('pipeline.json', 'rb'), headers=headers)
