---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta security labels retention-labels patch --retention-label-id {retentionLabel-id} --body '{\
  "@odata.type": "#microsoft.graph.security.retentionLabel",\
  "retentionDuration": {\
    "@odata.type": "microsoft.graph.security.retentionDuration"\
  },\
  "descriptionForAdmins": "String",\
  "descriptionForUsers": "String",\
  "labelToBeApplied": "String",\
  "defaultRecordBehavior": "String"\
}\
'

```