---
title: "Deploy a hotpatch quality update using Windows Autopatch"
description: "Follow these steps to deploy hotpatch Windows quality updates to devices in a Microsoft Entra tenant by using Windows Autopatch."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: autopatch
doc_type: conceptualPageType
---

# Deploy a hotpatch quality update using Windows Autopatch

With Windows Autopatch, you can deploy Windows updates to devices in a Microsoft Entra tenant. Today, Windows Autopatch supports the [deployment](windowsupdates-deployments.md) of Windows 10/11 feature updates, hotpatch and expedited quality updates, and driver updates. This topic focuses on the deployment of hotpatch quality updates. For information about deploying feature updates, see [Deploy a feature update](windowsupdates-deploy-update.md).  For information about deploying driver updates, see [Manage driver update](./windowsupdates-manage-driver-update.md).

Hotpatch updates are Monthly B release security updates that can be installed without requiring you to restart the device. It’s designed to reduce downtime and disruptions. By minimizing the need to restart, these updates help secure devices faster, making it easier for organizations to maintain security while keeping workflows uninterrupted.

There are no changes required to the existing update ring configurations. The existing ring configurations are honored alongside hotpatch policies.

## Prerequisites

* Devices meet the [prerequisites for Windows Autopatch](windowsupdates-concept-overview.md#prerequisites).
* Operating System: Devices must be running Windows 11 24H2 or later.
* VBS (Virtualization-Based Security): VBS must be enabled to ensure secure installation of Hotpatch updates.

## Step 1: (Optional) Get a list of hotpatch updates

You can query the Windows Autopatch catalog API to get a list of hotpatchable updates that can be deployed to devices as content in a deployment.

Quality updates are represented by the [qualityUpdateCatalogEntry](/graph/api/resources/windowsupdates-qualityupdatecatalogentry) type.

All quality updates refer to a list of [product revisions](/graph/api/resources/windowsupdates-productrevision). Add `$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions` to the request URL to identify the operating system builds that are affected by each quality update.

Hotpatch update can be identified by ""isHotpatchUpdate": "true" when it's available.

The following example shows how to query for all Windows quality updates truncated to show the hotpatch update

### Request

```http
GET https://deploymentschedulerppe.microsoft.com/deployment/graph/beta/v2/admin/windows/updates/catalog/entries?$top=1&$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry')
and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true
and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions/any(p:p/isHotpatchEnabled eq true)
&$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions&$orderby=releaseDateTime desc
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://deploymentschedulerppe.microsoft.com/deployment/graph/beta/v2/$metadata#admin/windows/updates/catalog/entries(microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves(),microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions(knowledgeBaseArticle()))",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "894b1ab760d378438d23b4992466c716627f4dfcff64b31ccb311861ed081f24",
            "displayName": "09/10/2024 - 2024.09 B SecurityUpdate for Windows 10 and later",
            "releaseDate": "2024-09-10T00:00:00Z",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2024-09-10T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2024-09 Cumulative Update for Windows 10 and later",
            "shortName": "2024.09 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 10.0,
                "exploitedCves": [
                    {
                        "number": "CVE-2024-38014",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-38014"
                    },
                    {
                        "number": "CVE-2024-38217",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-38217"
                    },
                    {
                        "number": "CVE-2024-38226",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-38226"
                    },
                    {
                        "number": "CVE-2024-43461",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-43461"
                    },
                    {
                        "number": "CVE-2024-43491",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-43491"
                    }
                ]
            },
            "productRevisions": [
                {
                    "id": "10.0.22000.3197",
                    "displayName": "Windows 11, version 21H2, build 22000.3197",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 3197
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043067",
                        "url": "https://support.microsoft.com/help/5043067"
                    }
                },
                {
                    "id": "10.0.19044.4894",
                    "displayName": "Windows 10, version 21H2, build 19044.4894",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 4894
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043064",
                        "url": "https://support.microsoft.com/help/5043064"
                    }
                },
                {
                    "id": "10.0.19045.4894",
                    "displayName": "Windows 10, version 22H2, build 19045.4894",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 4894
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043064",
                        "url": "https://support.microsoft.com/help/5043064"
                    }
                },
                {
                    "id": "10.0.22631.4169",
                    "displayName": "Windows 11, version 23H2, build 22631.4169",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 4169
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043076",
                        "url": "https://support.microsoft.com/help/5043076"
                    }
                },
                {
                    "id": "10.0.22621.4169",
                    "displayName": "Windows 11, version 22H2, build 22621.4169",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 4169
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043076",
                        "url": "https://support.microsoft.com/help/5043076"
                    }
                },
                {
                    "id": "10.0.26100.1656",
                    "displayName": "Windows 11, version Win 11 24H2, build 26100.1656",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": true,
                    "version": "Win 11 24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 1656
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043088",
                        "url": "https://support.microsoft.com/help/5043088"
                    }
                },
                {
                    "id": "10.0.26100.1742",
                    "displayName": "Windows 11, version Win 11 24H2, build 26100.1742",
                    "releaseDateTime": "2024-09-10T00:00:00Z",
                    "isHotpatchEnabled": false,
                    "version": "Win 11 24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 1742
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5043080",
                        "url": "https://support.microsoft.com/help/5043080"
                    }
                }
            ]
        }
    ]
}
```

## Step 2: Create a deployment audience
Deployment audiences specify content to deploy, how and when to deploy the content, and the targeted devices. The following example shows how to create a deployment audience.

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

### Response

```http

```

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. For quality updates, the content is specified using a target compliance date. When a deployment is created, a deployment audience is automatically created as a relationship.

### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
Content-type: application/json
 
{
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
        "catalogEntry": {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "catalog/entries/1"
        }
    },
    "settings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "expedite": {
            "isExpedited": true,
            "isReadinessTest": false
        },
        "userExperience": {
            "daysUntilForcedReboot": 2
        }
    }
}
```

## Step 3: Assign devices to the deployment audience

After deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). When the deployment audience is successfully updated, Windows Update offers the update to the relevant devices according to the deployment settings.

Devices are automatically registered when added to the members or exclusions collections of a deployment audience (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it doesn't already exist).

The following example shows how to add Microsoft Entra devices as members of the deployment audience.

### Request

```http
 
POST https://graph.microsoft.com/beta/admin/windows/updates/deploymentAudiences/ f660d844-30b7-46e4-a6cf-47e36164d3cb /updateAudience
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

## Step 4: Create a deployment  
A deployment specifies the content to deploy, how and when to deploy the content and the association to the targeted devices.
The deployment audience id created in step 2 is required in this step.
  
### Request

```http
POST https://graph.microsoft.com/beta/admin/windows/updates/deployments
Content-type: application/json
{
    "@odata.type": "#microsoft.graph.windowsUpdates.updatePolicy",
    "audience": {
        "id": " f660d844-30b7-46e4-a6cf-47e36164d3cb "
    },
    "autoEnrollmentUpdateCategories": [
        "quality"
    ],
    "complianceChangeRules": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.contentApprovalRule",
            "contentFilter": {
                "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateFilter",
                "classification": "security",
                "cadence": "monthly"
            },
            "durationBeforeDeploymentStart": "P7D"
        }
    ],
    "deploymentSettings": {
        "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings",
        "userExperience": {
            "IsHotpatchEnabled": true
        }
    }
}
```

### Response

```http
HTTP/1.1 201 Created
``

## After a deployment

After all devices assigned to a deployment audience have been initially offered the update, not all devices may have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, it ensures that Windows Update is offering the update to the assigned devices whenever they reconnect.
