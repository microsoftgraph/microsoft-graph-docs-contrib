---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta identity-governance entitlement-management connected-organizations create --body '{\
  "displayName":"Connected organization name",\
  "description":"Connected organization description",\
  "identitySources": [\
    {\
      "@odata.type": "#microsoft.graph.azureActiveDirectoryTenant",\
      "displayName": "Contoso",\
      "tenantId": "aaaabbbb-0000-cccc-1111-dddd2222eeee"\
      }\
  ],\
  "state":"proposed"\
}\
\
'

```