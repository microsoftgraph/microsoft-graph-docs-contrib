---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security audit-log queries create --body '{\
  "@odata.type": "#microsoft.graph.security.auditLogQuery",\
  "displayName": "String",\
  "filterStartDateTime": "String (timestamp)",\
  "filterEndDateTime": "String (timestamp)",\
  "recordTypeFilter": "String",\
  "keywordFilter": "String",\
  "serviceFilter": "String",\
  "operationFilters": [\
    "String"\
  ],\
  "userPrincipalNameFilters": [\
    "String"\
  ],\
  "ipAddressFilters": [\
    "String"\
  ],\
  "objectIdFilters": [\
    "String"\
  ],\
  "administrativeUnitIdFilters": [\
    "String"\
  ],\
  "status": "String"\
}\
'

```