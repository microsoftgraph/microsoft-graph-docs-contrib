---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta admin windows updates deployment-audiences microsoft-graph-windows-updates-update-audience post --deployment-audience-id {deploymentAudience-id} --body '{\
  "addMembers": [\
    {\
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",\
      "id": "String (identifier)"\
    }\
  ],\
}\
'

```