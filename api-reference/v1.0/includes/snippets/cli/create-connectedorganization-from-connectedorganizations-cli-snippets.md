---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc identity-governance entitlement-management connected-organizations create --body '{\
  "displayName":"Connected organization name",\
  "description":"Connected organization description",\
  "identitySources": [\
    {\
      "@odata.type": "#microsoft.graph.domainIdentitySource",\
      "domainName": "example.com",\
      "displayName": "example.com"\
      }\
  ],\
  "state":"proposed"\
}\
'

```