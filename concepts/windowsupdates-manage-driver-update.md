---
title: "Deploy a driver update using the Windows Update for Business deployment service"
description: "Follow these steps to manage driver approvals for devices in an Azure AD tenant by using the Windows Update for Business deployment service."
author: "Ryan-K-Williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Manage driver approvals using the Windows Update for Business deployment service

With the Windows Update for Business deployment service, you can deploy Windows updates to devices in an Azure AD tenant. Today, the deployment service supports [deployments](/graph/windowsupdates-deployments) of Windows 10 and Windows 11 feature updates, expedited security updates, and driver updates. This topic focuses on managing the deployments of driver updates. For information about deploying feature updates, see [Deploy a feature update](/graph/windowsupdates-deploy-update). For information about deploying expedited security updates, see [Deploy an expedited security update](/graph/windowsupdates-deploy-expedited-update).

When devices enrolled in the Windows Update for Business deployment service scan Windows Update, the deployment service collects scan results of applicable drivers that are better than what is currently installed on the device.  The service then catalogs them to be browsed, approved, and scheduled for deployment.  Only content that has been approved using the deployment service will be offered to devices as long as it remains enrolled in driver management.

## Prerequisites

Devices must meet the [prerequisites for the deployment service](windowsupdates-concept-overview.md#prerequisites).

## Step 1: Enroll devices in driver management

When you enroll a device in driver management, the deployment service becomes the authority for driver updates coming from Windows Update. As a result, devices do not receive drivers from Windows Update until a deployment is created or they are added to a driver update policy with approvals. To enroll a device, you must provide an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) ID.

### Request
``` http
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

``` http
HTTP/1.1 202 Accepted
```

## Step 2: Create a deployment audience for receiving updates

After devices are enrolled and managed by the deployement service, they can be placed into audiences for a [deployment](/graph/api/resources/windowsupdates-deployment).  Deployment audiences specify content to deploy, how and when to deploy the content, and the targeted devices.

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

After a [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience) is created, you can assign devices to the deployment audience. When the deployment audience is successfully updated, the Windows Update for Business deployment service will start collecting scan results from Windows Update to build a catalog of applicable drivers to be browsed, approved, and scheduled for deployment.

The following example shows how to add Azure AD devices as members of the deployment audience.

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

After devices are added to a deployment audience, you can create an [update policy](/graph/api/resources/windowsupdates-updatepolicy) that governs the deployment of content to the associated deployment audiences. The update policy is a high-level template so content can be deployed in a similar way for a given audience without having to create, manage, and relate individual deployments. Content is deployed to the devices in the associated audiences when a content approval is added to the policy.

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

After devices are added to a deployment audience, you can browse and review a catalog of [applicable content](/graph/api/resources/windowsupdates-applicablecontent) for drivers and firmware that are better than what is currently installed on the collection of devices in a deployment audience. The applicable content also provides a matched devices list of Azure Active Directory devices that are applicable for each driver.

The following example shows how to get the inventory of driver updates available for devices in an existing deployment audience.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/f660d844-30b7-46e4-a6cf-47e36164d3cb/applicableContent
```

### Response

```http
HTTP/1.1 200 OK
Content-type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences('f660d844-30b7-46e4-a6cf-47e36164d3cb')/applicableContent",
    "value": [
        {
            "matchedDevices": [
                {
                    "recommendedBy": [
                        "Microsoft"
                    ],
                    "deviceId": "fb95f07d-9e73-411d-99ab-7eca3a5122b1"
                }
            ],
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
            }
        },
}
```

## Step 5: Create driver approval

Deployments for driver updates are created and enforced on a policy through [compliance changes](/graph/api/resources/windowsupdates-compliancechange). [Content approvals](/graph/api/resources/windowsupdates-contentapproval) for driver updates are added to a policy by specifying the [catalog entry](/graph/api/resources/windowsupdates-catalogentry) associated to a specific driver update. Content will only be delivered to devices in the deployment audiences associated with the update policy when approved.

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
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
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
        }        
    },
    "deploymentSettings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": null,
        "expedite": null
        "schedule": {
            "startDateTime": "2023-02-14T01:00:00Z",
            "gradualRollout": {
                "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
                "durationBetweenOffers": "P1D",
                "devicesPerOffer": 0
            }
        }
    }
}
```

## During a driver deployment

While a deployment is in progress, you can update its audience members, as well as prevent the content from being offered to devices if they haven't already received it, by setting the **isRevoked** property to `true`.  This is the auditable way to pause a deployment and will automatically populate the **revokedBy** and **revokedDateTime** properties. To resume offering the content, create a new approval.

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

When you [unenroll](/graph/api/windowsupdates-updatableasset-unenrollassets) a device from management by the service for a given update category, the device is no longer managed by the deployment service and may start receiving other updates from Windows Update based on its policy configuration. The unenrolled device is removed from all audiences and deployments that contains content for the given update category. The device remains registered with the service and is still enrolled and receiving content for other update categories (if applicable).


### Request

``` http
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

``` http
HTTP/1.1 202 Accepted
```
