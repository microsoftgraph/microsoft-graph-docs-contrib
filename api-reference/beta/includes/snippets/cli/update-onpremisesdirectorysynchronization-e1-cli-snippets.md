---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta directory on-premises-synchronization patch --on-premises-directory-synchronization-id {onPremisesDirectorySynchronization-id} --body '{\
  "configuration": {\
    "accidentalDeletionPrevention": {\
      "synchronizationPreventionType": "enabledForCount",\
      "alertThreshold": 500\
    },\
    "synchronizationInterval": "PT30M",\
    "customerRequestedSynchronizationInterval": "PT1H"\
  },\
  "features": {\
    "groupWriteBackEnabled": true\
  }\
}\
'

```