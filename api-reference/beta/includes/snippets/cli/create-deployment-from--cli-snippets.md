---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta admin windows updates deployments create --body '{\
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",\
    "content": {\
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",\
        "catalogEntry": {\
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",\
            "id": "f341705b-0b15-4ce3-aaf2-6a1681d78606"\
        }\
    },\
    "settings": {\
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",\
        "schedule": {\
            "gradualRollout": {\
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",\
                "durationBetweenOffers": "P7D",\
                "devicePerOffer": 100\
            }\
        },\
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
\
'

```