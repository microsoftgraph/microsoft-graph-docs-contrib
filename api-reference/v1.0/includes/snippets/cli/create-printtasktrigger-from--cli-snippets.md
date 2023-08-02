---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc print printers task-triggers create --printer-id {printer-id} --body '{\
  "event": "jobStarted",\
  "definition@odata.bind": "https://graph.microsoft.com/v1.0/print/taskDefinitions/{taskDefinitionId}"\
}\
'

```