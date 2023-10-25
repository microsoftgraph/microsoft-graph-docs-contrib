---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta directory on-premises-synchronization patch --on-premises-directory-synchronization-id {onPremisesDirectorySynchronization-id} --body '{\
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