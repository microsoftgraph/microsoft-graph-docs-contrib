---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions backup-restore share-point-restore-sessions patch --share-point-restore-session-id {sharePointRestoreSession-id} --body '{\
  "siteRestoreArtifacts@delta": [\
    {\
      "restorePoint": { "@odata.id": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" }, //Create a new site restore artifact and add it under the Restore Session.\
      "destinationType": "new"\
    },\
    {\
      "restorePoint": { "@odata.id": "2b014d8c-71fe-4d00-a01a-31850bc5b32" },\
      "destinationType": "new"\
    },\
    {\
      "restorePoint": { "@odata.id": "3b014d8c-71fe-4d00-a01a-31850bc5b32c" },\
      "destinationType": "new"\
    },\
    {\
      "restorePoint": { "@odata.id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c" },\
      "destinationType": "new"\
    },\
    {\
      "@removed": {\
        "reason": "changed"\
      },\
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18a"\
    },\
    {\
      "@removed": {\
        "reason": "changed"\
      },\
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b"\
    },\
    {\
      "@removed": {\
        "reason": "changed"\
      },\
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18c"\
    }\
  ]\
}\
'

```