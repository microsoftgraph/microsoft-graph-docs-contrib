---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta admin windows updates deployments patch --deployment-id {deployment-id} --body '{\
  "@odata.type": "#microsoft.graph.windowsUpdates.deployment",\
  "state": {\
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",\
    "requestedValue": "paused"\
  },\
}\
'

```