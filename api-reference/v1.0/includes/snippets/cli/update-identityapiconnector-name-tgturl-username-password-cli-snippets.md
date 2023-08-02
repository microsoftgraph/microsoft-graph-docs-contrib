---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc identity api-connectors patch --identity-api-connector-id {identityApiConnector-id} --body '{\
  "displayName": "New Test API",\
  "targetUrl": "https://otherapi.com/api/endpoint",\
  "authenticationConfiguration": {\
    "@odata.type": "microsoft.graph.basicAuthentication",\
    "username":"<NEW_USERNAME>", \
    "password":"<NEW_PASSWORD>"\
  }\
}\
'

```