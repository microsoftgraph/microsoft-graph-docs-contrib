---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta tenant-relationships delegated-admin-relationships access-assignments create --delegated-admin-relationship-id {delegatedAdminRelationship-id} --body '{\
  "accessContainer": {\
    "accessContainerId": "869713c9-0b28-4d08-8949-ae07ae1bf528",\
    "accessContainerType": "securityGroup"\
  },\
  "accessDetails": {\
    "unifiedRoles": [\
      {\
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"\
      },\
      {\
        "roleDefinitionId": "f2ef992c-3afb-46b9-b7cf-a126ee74c451"\
      },\
      {\
        "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"\
      },\
      {\
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"\
      }\
    ]\
  }\
}\
'

```