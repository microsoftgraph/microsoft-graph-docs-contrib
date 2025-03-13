---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta admin windows updates deployments patch --deployment-id {deployment-id} --body '{\
  "@odata.type": "#microsoft.graph.windowsUpdates.deployment",\
  "settings": {\
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",\
    "monitoring": {\
      "monitoringRules": [\
        {\
          "signal": "rollback",\
          "threshold": 5,\
          "action": "pauseDeployment"\
        }\
      ]\
    }\
  }\
}\
'

```