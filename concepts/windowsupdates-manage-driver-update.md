---
title: "Deploy a driver update using Windows Autopatch"
description: "Follow these steps to manage driver approvals for devices in a Microsoft Entra tenant by using Windows Autopatch."
author: "Ryan-K-Williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: conceptualPageType
ms.date: 11/07/2024
ms.topic: install-set-up-deploy
---

# Deploy a driver update using Windows Autopatch

With Windows Autopatch, you can deploy Windows updates to devices in a Microsoft Entra tenant. Today, Windows Autopatch supports the [deployment](/graph/api/resources/windowsupdates-deployment?view=graph-rest-beta&preserve-view=true) of Windows 10 and Windows 11 feature updates, hotpatch quality updates, expedited quality updates, and driver updates. This topic focuses on managing the deployment of driver updates. For information about deploying feature updates, see [Deploy a feature update](./windowsupdates-deploy-update.md). For information about how to deploy hotpatch quality updates, see [Deploy a hotpatch quality update](./windowsupdates-hotpatch-update.md). For information about how to deploy expedited quality updates, see [Deploy an expedited quality update](./windowsupdates-deploy-expedited-update.md).

When devices enrolled in Windows Autopatch scan Windows Update, scan results of applicable drivers that are better than what is currently installed on the device are collected. Windows Autopatch then catalogs them to be browsed, approved, and scheduled for deployment. Only approved content is offered to devices as long as it remains enrolled in driver management.

## Prerequisites

Devices must meet the [prerequisites for Windows Autopatch](windowsupdates-concept-overview.md#prerequisites).

## Step 1: Enroll devices in driver management

When you enroll a device in driver management, Windows Autopatch becomes the authority for driver updates coming from Windows Update. As a result, devices do not receive drivers from Windows Update until a deployment is created or they are added to a driver update policy with approvals. To enroll a device, you must provide an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) ID.

### Request
```http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets
Content-Type: application/json
{
  "updateCategory": "driver",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b1"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b2"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b3"
    }
  ]
}
```

### Response

```http
HTTP/1.1 202 Accepted
```

## Step 2: Create a deployment audience for receiving updates

After devices are enrolled and managed by Windows Autopatch, they can be placed into audiences for a [deployment](/graph/api/resources/windowsupdates-deployment?view=graph-rest-beta&preserve-view=true). Deployment audiences specify content to deploy, how and when to deploy the content, and the targeted devices.

The following example shows how to create a deployment audience. The targeted devices are specified in the next step.

### Request
```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences
Content-Type: application/json
{
}
```

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences/$entity",
    "id": "f660d844-30b7-46e4-a6cf-47e36164d3cb",
    "applicableContent": []
}
```

## Step 3: Assign devices to the deployment audience

After a [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience?view=graph-rest-beta&preserve-view=true) is created, you can assign devices to the deployment audience. When the deployment audience is successfully updated, Windows Autopatch starts collecting scan results from Windows Update to build a catalog of applicable drivers to be browsed, approved, and scheduled for deployment.

The following example shows how to add Microsoft Entra devices as members of the deployment audience.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/updateAudience
Content-type: application/json
{
    "addMembers": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b1"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b2"
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
            "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b3"
        }
    ]
}
```

### Response

```http
HTTP/1.1 202 Accepted
```

## Step 4: Create an update policy

After devices are added to a deployment audience, you can create an [update policy](/graph/api/resources/windowsupdates-updatepolicy?view=graph-rest-beta&preserve-view=true) that governs the deployment of content to the associated deployment audiences. The update policy is a high-level template so content can be deployed in a similar way for a given audience without having to create, manage, and relate individual deployments. Content is deployed to the devices in the associated audiences when a content approval is added to the policy.

The following example shows how to create an update policy and assign an existing deployment audience to it.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies
Content-type: application/json
{
  "audience": {
    "@odata.id": "f660d844-30b7-46e4-a6cf-47e36164d3cb1"
  }
}
```

### Response

```http
HTTP/1.1 202 Accepted
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/updatePolicies/$entity",
    "id": "d7a89208-17c5-4daf-a164-ce176b00e4ef",
    "createdDateTime": "2023-01-19T07:58:01.9721459Z",
    "autoEnrollmentUpdateCategories": [],
    "complianceChangeRules": [],
    "deploymentSettings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": null,
        "expedite": null
    }
}
```

## Step 5: Get inventory of driver updates

After devices are added to a deployment audience, you can browse and review a catalog of [applicable content](/graph/api/resources/windowsupdates-applicablecontent?view=graph-rest-beta&preserve-view=true) for drivers and firmware that are better than what is currently installed on the collection of devices in a deployment audience. The applicable content also provides a matched devices list of Microsoft Entra devices that are applicable for each driver.

The following example shows how to get the inventory of driver updates available for devices in an existing deployment audience. Note: each page of results returns up to 100 catalog entries. Use the returned continuation token to see more results.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent?$expand=catalogEntry,matchedDevices
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "value": [
        {
            "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences('f660d844-30b7-46e4-a6cf-47e36164d3cb')/applicableContent", 
            "catalogEntryId": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c,
             "catalogEntry": {
                "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
                "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c",
                "displayName": "",
                "deployableUntilDateTime": null,
                "releaseDateTime": "",
                "description": "",
                "driverClass": "",
                "provider": "",
                "setupInformationFile": null,
                "manufacturer": "",
                "version": "",
                "versionDateTime": ""
            }, 
              "matchedDevices": [], 
              "matchedDevices@odata.nextLink":"https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent/5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c/matchedDevices"
        }, 
        ...99 entries
    ], 
    "@odata.nextLink":"https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent?$expand=catalogEntry&$skiptoken=%5b%7B%22token%22%3a%22%2bRID%3a~nx5uAPpQsrzgSQAAAAAAA%3d7b1e923b%22range%22%3a%7b22min%22%3a%max%22%3a22FF%227D%7D%5d"
}
```

Due to the large size of  `matchedDevice` lists, the default return behavior when a caller expands the navigation property matchedDevices is an empty collection and a continuation token to get the first page of results. The following example shows how to get the list of matchedDevices for a given `catalogEntry`.
Note: each page of results returns up to 100 devices. Use the returned continuation token to see more results.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent/5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c/matchedDevices
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "value": [
        {   
          "deviceId": "id-1",
          "recommendedBy": ["Microsoft", "Contoso"]             
        }, 
        {   
          "deviceId": "id-2",
          "recommendedBy": ["Microsoft", "Contoso"]             
        }, 
        {   
          "deviceId": "id-3",
          "recommendedBy": ["Microsoft", "Contoso"]             
        }, 
        ...97 entries
    ], 
   "@odata.nextLink":"https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent/5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c/matchedDevices?$skiptoken=deviceId:{id-97}"
}
```

## Step 5: Create driver approval

Deployments for driver updates are created and enforced on a policy through [compliance changes](/graph/api/resources/windowsupdates-compliancechange?view=graph-rest-beta&preserve-view=true). [Content approvals](/graph/api/resources/windowsupdates-contentapproval?view=graph-rest-beta&preserve-view=true) for driver updates are added to a policy by specifying the [catalog entry](/graph/api/resources/windowsupdates-catalogentry?view=graph-rest-beta&preserve-view=true) associated to a specific driver update. Content will only be delivered to devices in the deployment audiences associated with the update policy when approved.

The following example shows how to add a content approval to an existing policy.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/d7a89208-17c5-4daf-a164-ce176b00e4ef/complianceChanges
Content-type: application/json
{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "content":{
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry":{
            "@odata.type": "#microsoft.graph.windowsUpdates.driverUpdateCatalogEntry",
            "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c"
        }
    },
    "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "schedule": {
            "startDateTime": "2023-02-14T01:00:00Z"
        }
    }    
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/updatePolicies('d7a89208-17c5-4daf-a164-ce176b00e4ef')/complianceChanges/$entity",
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "id": "dbf29574-ffd9-49cf-87f2-f03629e596ba",
    "createdDateTime": "2023-01-19T08:41:29.3840994Z",
    "isRevoked": false,
    "revokedDateTime": "0001-01-01T00:00:00Z",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/updatePolicies('d7a89208-17c5-4daf-a164-ce176b00e4ef')/complianceChanges('dbf29574-ffd9-49cf-87f2-f03629e596ba')/microsoft.graph.windowsUpdates.contentApproval/content/microsoft.graph.windowsUpdates.catalogContent/catalogEntry/$entity",
        "id": "5d6dede684ba5c4a731d62d9c9c2a99db12c5e6015e9f8ad00f3e9387c7f399c",
        "displayName": "Microsoft - Test - 1.0.0.1",
        "deployableUntilDateTime": null,
        "releaseDateTime": "0001-01-21T04:18:32Z",
        "description": "Microsoft test driver update released in January 2021",
        "driverClass": "OtherHardware",
        "provider": "Microsoft",
        "setupInformationFile": null,
        "manufacturer": "Microsoft",
        "version": "1.0.0.1",
        "versionDateTime": "2021-01-11T02:43:14Z"
    },
    "deploymentSettings": {
        "schedule": {
            "startDateTime": "2023-02-14T01:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P1D",
                "devicesPerOffer": 0
            }
        },
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": null,
        "expedite": null
    }
}
```

## During a driver deployment

While a deployment is in progress, you can update its audience members, as well as prevent the content from being offered to devices if they haven't already received it, by setting the **isRevoked** property to `true`. This is the auditable way to pause a deployment and will automatically populate the **revokedBy** and **revokedDateTime** properties. To resume offering the content, create a new approval.

### Request

```http
PATCH https://graph.microsoft.com/beta/admin/windows/updates/updatePolicies/d7a89208-17c5-4daf-a164-ce176b00e4ef/complianceChanges/dbf29574-ffd9-49cf-87f2-f03629e596ba
Content-type: application/json
{
    "@odata.type": "#microsoft.graph.windowsUpdates.contentApproval",
    "isRevoked": true
}
```

### Response

```http
HTTP/1.1 204 No Content
```

## Unenroll from driver management

When you [unenroll](/graph/api/windowsupdates-updatableasset-unenrollassets) a device from management for a given update category, the device is no longer managed by Windows Autopatch and might start receiving other updates from Windows Update based on its policy configuration. The unenrolled device is removed from all audiences and deployments that contain content for the given update category. The device remains registered with Windows Autopatch and is still enrolled and receiving content for other update categories, if applicable.


### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/unenrollAssets
Content-Type: application/json
{
  "updateCategory": "driver",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "fb95f07d-9e73-411d-99ab-7eca3a5122b1"
    }
  ]
}
```

### Response

```http
HTTP/1.1 202 Accepted
```
