---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta tenant-relationships managed-tenants tenants-customized-information patch --tenant-customized-information-id {tenantCustomizedInformation-id} --body '{\
  "@odata.type": "#microsoft.graph.managedTenants.tenantCustomizedInformation",\
  "tenantId": "String",\
  "contacts": [\
    {\
      "@odata.type": "microsoft.graph.managedTenants.tenantContactInformation",\
      "name": "String",\
      "title": "String",\
      "email": "String",\
      "phone": "String",\
      "notes": "String"\
    }\
  ],\
  "website": "String"\
}\
'

```