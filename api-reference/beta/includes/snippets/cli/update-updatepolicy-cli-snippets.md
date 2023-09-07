---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta admin windows updates update-policies patch --update-policy-id {updatePolicy-id} --body '{\
  "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",\
  "deploymentSettings": {\
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",\
    "schedule": {\
      "gradualRollout": {\
        "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",\
        "durationBetweenOffers": "P1D",\
        "devicePerOffer": 1000\
      }\
    }\
  }\
}\
'

```