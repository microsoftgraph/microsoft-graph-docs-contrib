---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc directory on-premises-synchronization patch --on-premises-directory-synchronization-id {onPremisesDirectorySynchronization-id} --body '{\
  "configuration": {\
    "accidentalDeletionPrevention": {\
      "synchronizationPreventionType": "enabledForCount",\
      "alertThreshold": 500\
    }\
  },\
  "features": {\
    "groupWriteBackEnabled": true\
  }\
}\
'

```