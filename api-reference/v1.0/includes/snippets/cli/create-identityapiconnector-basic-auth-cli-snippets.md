---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity api-connectors create --body '{\
    "displayName":"Test API",\
    "targetUrl":"https://someapi.com/api",\
    "authenticationConfiguration": {\
      "@odata.type":"#microsoft.graph.basicAuthentication",\
      "username": "MyUsername",\
      "password": "MyPassword"\
    }\
}\
'

```