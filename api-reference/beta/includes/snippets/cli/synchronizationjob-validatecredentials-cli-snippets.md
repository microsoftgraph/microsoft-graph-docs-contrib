---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta service-principals synchronization jobs validate-credentials-by-id post --service-principal-id {servicePrincipal-id} --synchronization-job-id {synchronizationJob-id} --body '{\
  "credentials": [\
    {\
      "key": "UserName",\
      "value": "user@domain.com"\
    },\
    {\
      "key": "Password",\
      "value": "password-value"\
    }\
  ]\
}\
'

```