---
title: "Deploy a feature update using the Windows Update for Business deployment service"
description: "Follow these steps to deploy Windows feature updates to devices in an Azure AD tenant by using the Windows Update for Business deployment service."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Deploy a feature update using the Windows Update for Business deployment service

With the Windows Update for Business deployment service, you can deploy Windows updates to devices in an Azure AD tenant. Today, the deployment service supports [deployments](windowsupdates-deployments.md) of Windows 10/11 feature updates, expedited security updates, and driver updates. This topic focuses on deployments of feature updates. For information on deploying expedited security updates, see [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).  For infomation about deploying driver updates, see [Manage driver update](/graph/windowsupdates-manage-driver-update).

When you deploy a feature update to a device, Windows Update offers the specified update to the device if it has not yet received the update. For example, if you deploy Windows 10 feature update version 20H2 to a device that is enrolled in feature update management and is currently on an older version of Windows 10, the device updates to version 20H2. If the device is already at or above version 20H2, it stays on its current version. If the device is not enrolled in feature update management, the device is not affected by this operation.

As long as a device remains enrolled in feature update management, the device does not receive any other feature updates from Windows Update unless explicitly deployed using the deployment service.

> [!IMPORTANT]
> By using the Windows Update for Business deployment service to upgrade devices to Windows 11 (by setting the version paramater of a deployment to "Windows 11, version 21H2"), you are agreeing that when applying this operating system to a device either (1) the applicable Windows license was purchased though volume licensing, or (2) that you are authorized to bind your organization and are accepting on its behalf the relevant Microsoft Software License Terms to be found here: [Microsoft Software License Terms](https://www.microsoft.com/Useterms).

## Prerequisites

* Devices meet the [prerequisites for the deployment service](windowsupdates-concept-overview.md#prerequisites).
* Before you can use the deployment service to deploy feature updates, devices must be [enrolled in management](windowsupdates-enroll.md) by the deployment service for the feature update category.

## Step 1: (Optional) Get a list of deployable updates

You can query the deployment service catalog to get a list of updates that can be deployed to devices as content in a deployment.

Below is an example of querying for all Windows 10 feature updates that are deployable by the deployment service.

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
            "id": "560a186a-1434-4364-8330-deb944b494ff",
            "displayName": "Windows 10, version 20H2",
            "releaseDate": "String (timestamp)",
            "deployableUntilDateTime": "String (timestamp)",
            "version": "20H2"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry",
            "id": "5e436dae-56bd-4925-bf8b-acf550e07227",
            "displayName": "Windows 10, version 2004",
            "releaseDate": "String (timestamp)",
            "deployableUntilDateTime": "String (timestamp)",
            "version": "2004"
        }
    ]
}
```

## Step 2: Create a deployment

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. When a deployment is created, a deployment audience is automatically created as a relationship.

Below is an example of creating a deployment of a feature update, with optional settings configuring the [deployment schedule](windowsupdates-schedule-deployment.md) and [monitoring rules](windowsupdates-manage-monitoring-rules.md). [Safeguards](windowsupdates-manage-safeguards.md) are applied by default. The targeted devices are specified in the next step.

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
        "userExperience": null
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Step 3: Assign devices to the deployment audience

After a deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). After the deployment audience is successfully updated, Windows Update starts offering the update to the relevant devices according to the deployment settings.

Devices are automatically registered with the service when added to the members or exclusions collections of a deployment audience (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it does not already exist).

The following example shows how to add Azure AD devices as members of the deployment audience.

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

After all devices assigned to a deployment audience have been initially offered the update, it is possible that not all devices have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, Windows Update continues to offer the update to the assigned devices whenever they reconnect.

