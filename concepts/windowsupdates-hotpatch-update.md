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

Hotpatch updates are Monthly B release security updates that can be installed without requiring you to restart the device. It’s designed to reduce downtime and disruptions. By minimizing the need to restart, these updates help secure faster, making it easier for organizations to maintain security while keeping workflows uninterrupted.

There are no changes required to the existing update ring configurations. The existing ring configurations are honored alongside hotpatch policies.


## Prerequisites

* Devices meet the [prerequisites for Windows Autopatch](windowsupdates-concept-overview.md#prerequisites).
* Operating System: Devices must be running Windows 11 24H2 or later.
* VBS (Virtualization-Based Security): VBS must be enabled to ensure secure installation of Hotpatch updates.


## Step 1: (Optional) Get a list of hotpatch updates

You can query the Windows Autopatch catalog API to get a list of updates that can be expedited to devices as content in a deployment.

Quality updates are represented by the [qualityUpdateCatalogEntry](/graph/api/resources/windowsupdates-qualityupdatecatalogentry) type.

All quality updates refer to a list of [product revisions](/graph/api/resources/windowsupdates-productrevision). Add `$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions` to the request URL to identify the operating system builds that are affected by each quality update.

Hotpatch update can be identified by ""isHotpatchUpdate": "true" when its available. 

The following example shows how to query for all Windows 10 quality updates that can be deployed by Windows Autopatch. We recommend to only show the three most current updates, so the following example includes `$top=4`.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$top=3&$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions&$orderby=releaseDateTime desc
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions())",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET admin/windows/updates/catalog/entries?$select=deployableUntilDateTime,displayName",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f",
            "displayName": "10/22/2024 - 2024.10 D Update for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2024-10-22T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "nonSecurity",
            "catalogName": "2024-10 Cumulative Update Preview for Windows 10 and later",
            "shortName": "2024.10 D",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": null,
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.5073",
                    "displayName": "Windows 10, version 22H2, build 19045.5073",
                    "releaseDateTime": "2024-10-22T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 5073
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.5073')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5045594",
                        "url": "https://support.microsoft.com/help/5045594"
                    }
                },
                {
                    "id": "10.0.22621.4391",
                    "displayName": "Windows 11, version 22H2, build 22621.4391",
                    "releaseDateTime": "2024-10-22T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 4391
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.4391')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044380",
                        "url": "https://support.microsoft.com/help/5044380"
                    }
                },
                {
                    "id": "10.0.22631.4391",
                    "displayName": "Windows 11, version 23H2, build 22631.4391",
                    "releaseDateTime": "2024-10-22T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 4391
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.4391')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044380",
                        "url": "https://support.microsoft.com/help/5044380"
                    }
                },
                {
                    "id": "10.0.26100.2161",
                    "displayName": "Windows 11, version 24H2, build 26100.2161",
                    "releaseDateTime": "2024-10-24T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 2161
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('a67222f12ca538beefc864fb71d630b979c0c53f952ce9fed721cebe778eb80f')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.26100.2161')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044384",
                        "url": "https://support.microsoft.com/help/5044384"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7",
            "displayName": "10/08/2024 - 2024.10 B SecurityUpdate for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2024-10-08T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2024-10 Cumulative Update for Windows 10 and later",
            "shortName": "2024.10 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves",
                "exploitedCves": [
                    {
                        "number": "CVE-2024-43573",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-43573"
                    },
                    {
                        "number": "CVE-2024-43572",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2024-43572"
                    }
                ]
            },
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.5011",
                    "displayName": "Windows 10, version 22H2, build 19045.5011",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 5011
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.5011')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044273",
                        "url": "https://support.microsoft.com/help/5044273"
                    }
                },
                {
                    "id": "10.0.22621.4317",
                    "displayName": "Windows 11, version 22H2, build 22621.4317",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 4317
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.4317')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044285",
                        "url": "https://support.microsoft.com/help/5044285"
                    }
                },
                {
                    "id": "10.0.22000.3260",
                    "displayName": "Windows 11, version 21H2, build 22000.3260",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 3260
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22000.3260')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044280",
                        "url": "https://support.microsoft.com/help/5044280"
                    }
                },
                {
                    "id": "10.0.19044.5011",
                    "displayName": "Windows 10, version 21H2, build 19044.5011",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 5011
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19044.5011')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044273",
                        "url": "https://support.microsoft.com/help/5044273"
                    }
                },
                {
                    "id": "10.0.22631.4317",
                    "displayName": "Windows 11, version 23H2, build 22631.4317",
                    "isHotpatchUpdate": "false",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 4317
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.4317')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044285",
                        "url": "https://support.microsoft.com/help/5044285"
                    }
                },
                {
                    "id": "10.0.26100.2033",
                    "displayName": "Windows 11, version 24H2, build 26100.2033",
                    "releaseDateTime": "2024-10-08T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 2033
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('67e93dbba0c78c0190012dd6bdf0d0cdc00e5e2d7105aa42a8e00ebbd24c47d7')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.26100.2033')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5044284",
                        "url": "https://support.microsoft.com/help/5044284"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075",
            "displayName": "09/24/2024 - 2024.09 D Update for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2024-09-24T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "nonSecurity",
            "catalogName": "2024-09 Cumulative Update Preview for Windows 10 and later",
            "shortName": "2024.09 D",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": null,
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.4957",
                    "displayName": "Windows 10, version 22H2, build 19045.4957",
                    "releaseDateTime": "2024-09-24T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 4957
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.4957')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5043131",
                        "url": "https://support.microsoft.com/help/5043131"
                    }
                },
                {
                    "id": "10.0.22621.4249",
                    "displayName": "Windows 11, version 22H2, build 22621.4249",
                    "releaseDateTime": "2024-09-26T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 4249
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.4249')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5043145",
                        "url": "https://support.microsoft.com/help/5043145"
                    }
                },
                {
                    "id": "10.0.22631.4249",
                    "displayName": "Windows 11, version 23H2, build 22631.4249",
                    "releaseDateTime": "2024-09-26T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 4249
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.4249')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5043145",
                        "url": "https://support.microsoft.com/help/5043145"
                    }
                },
                {
                    "id": "10.0.26100.1882",
                    "displayName": "Windows 11, version 24H2, build 26100.1882",
                    "releaseDateTime": "2024-09-30T00:00:00Z",
                    "isHotpatchUpdate": "false",
                    "version": "24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 1882
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('bc9a6fb9208be086d73aa4a83d3a875823365be105b9166ecfeafc9948de8075')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.26100.1882')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5043178",
                        "url": "https://support.microsoft.com/help/5043178"
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

### Response

```http

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

### Response

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/deploymentAudiences/$entity",
    "id": "f660d844-30b7-46e4-a6cf-47e36164d3cb",
    "applicableContent": []
}

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



### Response

```http
HTTP/1.1 202 Accepted
```

## Step 4: Create a deployment  
A deployment specifies the content to deploy, how and when to deploy the content and the association to the targetted devices. 
The deployment audience id created in step 2 will be required in this step.


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

### Response

```http
HTTP/1.1 201 Created



## After a deployment

After all devices assigned to a deployment audience have been initially offered the update, not all devices may have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, it ensures that Windows Update is offering the update to the assigned devices whenever they reconnect.
