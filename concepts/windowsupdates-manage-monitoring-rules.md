---
title: "Manage monitoring rules using Windows Autopatch"
description: "Use Windows Autopatch to create a monitoring rule or resume deployments paused by a monitoring rule."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: conceptualPageType
ms.date: 11/07/2024
---

# Manage monitoring rules using Windows Autopatch

For deployments initiated by Windows Autopatch, you can use a monitoring rule to configure alerts and automated actions based on deployment signals.

Monitoring rules are compatible with deployments of Windows 10 feature updates.

## Step 1: Create a monitoring rule

You can create a [monitoring rule](/graph/api/resources/windowsupdates-monitoringrule) for a deployment by configuring the [monitoring settings](/graph/api/resources/windowsupdates-monitoringsettings). Each [deployment](/graph/api/resources/windowsupdates-deployment) can have one active monitoring rule at a time.

Monitoring rules consist of three components:
* **signal**: The type of update issue to be monitored.
* **threshold**: When this percentage of devices emit the specified signal, the monitoring rule is triggered.
* **action**: The action to take when the monitoring rule is triggered.

The following example shows how to create a monitoring rule for a deployment at the same time as creating the deployment.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
Content-type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "catalog/entries/1"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": [
                {
                    "signal": "rollback",
                    "threshold": 5,
                    "action": "pauseDeployment"
                }
            ]
        }
    }
}
```

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "id": "b5171742-1742-b517-4217-17b5421717b5",
    "state": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
        "value": "offering",
        "reasons": [
            {
                "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason",
                "value": "offeringByRequest"
            }
        ],
        "requestedValue": "none",
        "effectiveSinceDate": "String (timestamp)"
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": [
                {
                    "@odata.type": "#microsoft.graph.windowsUpdates.monitoringRule",
                    "signal": "rollback",
                    "threshold": 5,
                    "action": "pauseDeployment"
                }
            ]
        },
        "schedule": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Step 2: Resume a deployment that was paused by a monitoring rule
When a monitoring rule triggers, it provides the opportunity to investigate update issues that may have lead to it being applied. After investigation, you may wish to resume the deployment. There are two ways to do so: removing the monitoring rule or updating the monitoring rule threshold.

### Example: Resume deployment by removing a monitoring rule
When a monitoring rule that pauses the deployment is triggered, one way to resume the deployment is to remove the rule.

The following example shows how to resume the deployment by removing the rule.

#### Request

``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/deployments/b5171742-1742-b517-4217-17b5421717b5
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": []
        }
    }
}
```

#### Response

``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "id": "b5171742-1742-b517-4217-17b5421717b5",
    "state": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
        "value": "offering",
        "reasons": [
            {
                "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason",
                "value": "offeringByRequest"
            }
        ],
        "requestedValue": "none",
        "effectiveSinceDate": "String (timestamp)"
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": []
        },
        "schedule": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

### Example: Resume deployment by updating a monitoring rule threshold
Another way to resume the deployment is to change the threshold of the relevant monitoring rule. When the new threshold is reached, the action (in this case, `pauseDeployment`) will be triggered again. 

The following example shows how to resume the deployment by changing the monitoring rule threshold. This example also illustrates how to edit any existing monitoring rule, even if its threshold has not yet been met, as well as how to create a monitoring rule on a deployment that does not have one.

#### Request

``` http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/deployments/b5171742-1742-b517-4217-17b5421717b5
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": [
                {
                    "signal": "rollback",
                    "threshold": 10,
                    "action": "pauseDeployment"
                }
            ]
        }
    }
}
```

#### Response

``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "id": "b5171742-1742-b517-4217-17b5421717b5",
    "state": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentState",
        "value": "offering",
        "reasons": [
            {
                "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason",
                "value": "offeringByRequest"
            }
        ],
        "requestedValue": "none",
        "effectiveSinceDate": "String (timestamp)"
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "monitoring": {
            "monitoringRules": [
                {
                    "@odata.type": "#microsoft.graph.windowsUpdates.monitoringRule",
                    "signal": "rollback",
                    "threshold": 10,
                    "action": "pauseDeployment"
                }
            ]
        },
        "schedule": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```
