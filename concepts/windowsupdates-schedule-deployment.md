---
title: "Schedule a deployment using Windows Autopatch"
description: "When deploying an update, you can schedule the deployment so that devices receive the update later by using Windows Autopatch."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: conceptualPageType
ms.date: 11/07/2024
---

# Schedule a deployment using Windows Autopatch

When deploying an update using Windows Autopatch, you can schedule the deployment so that devices receive the update at a future date.

Scheduling features are compatible with [deployments](/graph/windowsupdates-deployments) of Windows 10/Windows 11 feature updates.

## Schedule a deployment to start at a future date

You can schedule a deployment to start at a future date by configuring its [schedule settings](/graph/api/resources/windowsupdates-schedulesettings). In the following example, all devices assigned the deployment will be offered the update on July 1, 2021.

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
        "schedule": {
            "startDateTime": "2021-07-01T17:00:00Z",
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
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2021-07-01T17:00:00Z",
            "gradualRollout": null
        },
        "monitoring": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Stage a deployment over a period of time

You can also schedule a deployment so that assigned devices are offered the update in a gradual rollout that is staged over time. The update is offered to subsets of devices assigned to the deployment at regular intervals, with the total duration of the rollout determined by either an end date or offering rate. You can think of a gradual rollout as similar to a recurring calendar event series.

### Example: Stage a deployment at regular intervals between start and end dates

One way to stage a deployment over time is to set the **endDateTime** of the deployment. All devices assigned to the deployment will be offered the update within the window between the **startDateTime** and **endDateTime**. If the **startDateTime** is not specified, then the deployment will begin as soon as devices are assigned.

In this example, you configure a new deployment so that a new set of devices is offered the update every week (**durationBetweenOffers** set to seven days), starting on July 1, 2021. All devices are offered the update before August 1, 2021.

#### Request

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
        "schedule": {
            "startDateTime": "2021-07-01T17:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
                "endDateTime": "2021-08-01T17:00:00Z",
                "durationBetweenOffers": "P7D"
            }
        }
    }
}
```

#### Response

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
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2021-07-01T17:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
                "endDateTime": "2021-08-01T17:00:00Z",
                "durationBetweenOffers": "P7D"
            }
        }
        "monitoring": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```


### Example: Stage a deployment at regular intervals with a specified number of devices at each offer

Another way to stage a deployment over time is to configure the offering rate using `devicesPerOffer`. Devices assigned to the deployment will be offered the update according to the specified rate until all devices have been offered the update.

In this example, you configure a new deployment so that a new set of devices is offered the update every week (**durationBetweenOffers** set to seven days), starting on July 1, 2021. 100 devices are offered the update at a time until all devices have been offered the update.

#### Request

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
        "schedule": {
            "startDateTime": "2020-07-01T17:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P7D",
                "devicePerOffer": 100
            }
        }
    }
}
```

#### Response

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
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2020-07-01T17:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P7D",
                "devicePerOffer": 100
            }
        },
        "monitoring": null,
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```
