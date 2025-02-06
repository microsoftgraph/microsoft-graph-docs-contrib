---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta solutions backup-restore exchange-restore-sessions mailbox-restore-artifacts-bulk-addition-requests create --exchange-restore-session-id {exchangeRestoreSession-id} --body '{\
  "displayName": "Usermailbox-BulkRestoreArtifacts",\
  "mailboxes": [\
    "contoso1@micorosft.com",\
    "consotos2@microsoft.com",\
    "contoso3@microsoft.com"\
  ],\
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