---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions backup-restore one-drive-for-business-restore-sessions drive-restore-artifacts-bulk-addition-requests create --one-drive-for-business-restore-session-id {oneDriveForBusinessRestoreSession-id} --body '{\
  "displayName": "ODB-BulkRestoreArtifacts",\
  "drives": [\
    "contoso1@micorosft.com",\
    "consotos2@microsoft.com",\
    "contoso3@microsoft.com"\
  ],\
  "directoryObjectIds": [],\
  "protectionUnitIds": [],\
  "protectionTimePeriod": {\
    "startDateTime": "2021-01-01T00:00:00Z",\
    "endDateTime": "2021-01-08T00:00:00Z"\
  },\
  "destinationType": "new",\
  "tags": "fastRestore",\
  "restorePointPreference": "latest"\
}\
'

```