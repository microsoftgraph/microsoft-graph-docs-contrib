---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions backup-restore share-point-restore-sessions site-restore-artifacts-bulk-addition-requests create --share-point-restore-session-id {sharePointRestoreSession-id} --body '{\
  "displayName": "SPO-BulkRestoreArtifacts",\
  "siteWebUrls": [\
    "https: //contoso1.sharepoint.com",\
    "https: //contoso2.sharepoint.com",\
    "https: //contoso3.sharepoint.com"\
  ],\
  "protectionTimePeriod": {\
    "startDateTime": "2024-01-01T00:00:00Z",\
    "endDateTime": "2024-01-08T00:00:00Z"\
  },\
  "destinationType": "new",\
  "tags": "fastRestore",\
  "restorePointPreference": "latest"\
}\
'

```