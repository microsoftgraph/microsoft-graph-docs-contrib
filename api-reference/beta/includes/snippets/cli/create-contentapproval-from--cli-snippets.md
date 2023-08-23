---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta admin windows updates update-policies compliance-changes create --update-policy-id {updatePolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",\
  "content": {\
    "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",\
    "catalogEntry": {\
      "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry", \
      "id": "6b7e60db-a8e4-426a-9aed-bd12b5c0b9d4"\
    }\
  },\
  "deploymentSettings": {},\
    "schedule": {\
      "startDateTime": "String (timestamp)",\
      "gradualRollout": {\
        "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",\
        "endDateTime": "String (timestamp)"\
      }\
   }\
}\
'

```