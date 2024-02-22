---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc service-principals synchronization jobs provision-on-demand post --service-principal-id {servicePrincipal-id} --synchronization-job-id {synchronizationJob-id} --body '{\
  "parameters": [\
    {\
      "ruleId": "6c409270-f78a-4bc6-af23-7cf3ab6482fe",\
      "subjects": [\
        {\
          "objectId": "CN=AdeleV,CN=Users,DC=corp,DC=chicago,DC=com",\
          "objectTypeName": "user"\
        }\
      ]\
    }\
  ]\
}\
'

```