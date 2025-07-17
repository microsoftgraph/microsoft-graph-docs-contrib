---
title: "Deploy a feature update using Windows Autopatch"
description: "Follow these steps to deploy Windows feature updates to devices in a Microsoft Entra tenant by using Windows Autopatch."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: conceptualPageType
ms.date: 11/07/2024
---

# Deploy a feature update using Windows Autopatch

With Windows Autopatch, you can deploy Windows updates to devices in a Microsoft Entra tenant. Today, Windows Autopatch supports the [deployment](windowsupdates-deployments.md) of Windows 10/11 feature updates, hotpatch quality updates, expedited quality updates, and driver updates. This article focuses on the deployment of feature updates. For information about how to deploy expedited security updates, see [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md). For information about how to deploy hotpatch quality updates, see [Deploy a hotpatch quality update](./windowsupdates-hotpatch-update.md). For information about how to deploy driver updates, see [Manage driver update](/graph/windowsupdates-manage-driver-update).

When you deploy a feature update to a device, Windows Update offers the specified update to the device if it hasn't yet received the update. For example, if you deploy Windows 10 feature update version 20H2 to a device that is enrolled in feature update management and is currently on an older version of Windows 10, the device updates to version 20H2. If the device is already at or beyond version 20H2, it stays on its current version. If the device isn't enrolled in feature update management, the device isn't affected by this operation.

As long as a device remains enrolled in feature update management, the device doesn't receive any other feature updates from Windows Update unless explicitly deployed using Windows Autopatch.

> [!IMPORTANT]
> By using Windows Autopatch to upgrade devices to Windows 11 (by setting the version paramater of a deployment to "Windows 11, version 21H2"), you are agreeing that when applying this operating system to a device either (1) the applicable Windows license was purchased though volume licensing, or (2) that you are authorized to bind your organization and are accepting on its behalf the relevant Microsoft Software License Terms to be found here: [Microsoft Software License Terms](https://www.microsoft.com/Useterms).

## Prerequisites

* Devices meet the [prerequisites for Windows Autopatch](windowsupdates-concept-overview.md#prerequisites).
* Before you can deploy feature updates using Windows Autopatch, devices must be [enrolled in management](windowsupdates-enroll.md) for the feature update category.

## Step 1: (Optional) Get a list of deployable updates

You can query the Windows Autopatch catalog API to get a list of updates that can be deployed to devices as content in a deployment.

The following example shows how to query for all Windows feature updates that are deployable by Windows Autopatch.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$filter=isof('microsoft.graph.windowsUpdates.featureUpdateCatalogEntry')
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "d9049ddb-0ca8-4bc1-bd3c-41a456ef300f",
            "displayName": "Windows 11, version 22H2",
            "deployableUntilDateTime": "2025-10-14T00:00:00Z",
            "releaseDateTime": "2022-09-20T00:00:00Z",
            "version": "Windows 11, version 22H2",
            "buildNumber": "22621"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "7f4cee4c-9aa5-4e61-a4ca-c23a1bdba6f7",
            "displayName": "Windows 11",
            "deployableUntilDateTime": "2024-10-08T00:00:00Z",
            "releaseDateTime": "2021-10-04T00:00:00Z",
            "version": "Windows 11, version 21H2",
            "buildNumber": "22000"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "f341705b-0b15-4ce3-aaf2-6a1681d78606",
            "displayName": "Windows 10, version 22H2",
            "deployableUntilDateTime": "2025-10-14T00:00:00Z",
            "releaseDateTime": "2022-10-18T00:00:00Z",
            "version": "Windows 10, version 22H2",
            "buildNumber": "19045"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "53707a30-7816-448e-ab54-8cfedc48bfbc",
            "displayName": "Windows 10, version 21H2",
            "deployableUntilDateTime": "2024-06-11T00:00:00Z",
            "releaseDateTime": "2021-11-16T00:00:00Z",
            "version": "Windows 10, version 21H2",
            "buildNumber": "19044"
        }
    ]
}
```

## Step 2: Create a deployment

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. When a deployment is created, a deployment audience is automatically created as a relationship.

You can create a deployment as a _recommended_ one that requires no manual intervention by the end user. You can also create a deployment as an _optional_ one that allows the end user to download and install the update at their convenience.

The following example shows how to create an _optional_ deployment of a feature update, with optional settings configuring the [deployment schedule](windowsupdates-schedule-deployment.md) and [monitoring rules](windowsupdates-manage-monitoring-rules.md). [Safeguards](windowsupdates-manage-safeguards.md) are applied by default. The targeted devices are specified in the next step.

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
            "id": "cd45877c-87a9-4ed1-b184-fd89230207b1"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P7D",
                "devicePerOffer": 100
            }
        },
        "monitoring": {
            "monitoringRules": [
                {
                    "signal": "rollback",
                    "threshold": 5,
                    "action": "pauseDeployment"
                }
            ]
        },
        "userExperience": {
            "offerAsOptional": false,
            "daysUntilForcedReboot": null
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
        "reasons": [],
        "requestedValue": "none",
        "effectiveSinceDate": "String (timestamp)"
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P7D",
                "devicePerOffer": 100
            }
        },
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
        "userExperience": {
            "offerAsOptional": false, 
            "daysUntilForcedReboot": null
        }
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Step 3: Assign devices to the deployment audience

After a deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). After the deployment audience is successfully updated, Windows Update starts offering the update to the relevant devices according to the deployment settings.

Devices are automatically registered when added to the members or exclusions collections of a deployment audience (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it doesn't already exist).

The following example shows how to add Microsoft Entra devices as members of the deployment audience.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments/{deploymentId}/audience/updateAudience
Content-type: application/json

{
    "addMembers": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "String (identifier)"
        }
    ]
}
```

### Response

```http
HTTP/1.1 202 Accepted
```

## During a deployment

While a deployment is in progress, you can pause the deployment by updating its **state**, as well as update its audience members and exclusions.

## After a deployment

After all devices assigned to a deployment audience have been initially offered the update, it's possible that not all devices have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, Windows Update continues to offer the update to the assigned devices whenever they reconnect.
