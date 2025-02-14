---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc solutions backup-restore restore-points search post --body '{\
  "artifactQuery": {\
    "queryExpression": "(Sender -eq 'abc@contoso.com') -and (Subject -like '*Check email*' -or Subject -like ' Important') -and (HasAttachment -eq 'true') -and (PitrDumpsterActionTriggeredTime -gt '{2024-09-21T08:20:00.0000000Z}')",\
    "artifactType": "message"\
  },\
  "protectionUnitIds": ["23014d8c-71fe-4d00-a01a-31850bc5b42a"],\
  "protectionTimePeriod": {\
    "startDateTime": "2021-01-01T00:00:00Z"\
  },\
  "restorePointPreference": "oldest"\
}\
'

```