---
title: "Deploy an expedited security update using the Windows Update for Business deployment service"
description: "Follow these steps to deploy expedited Windows security updates to devices in a Microsoft Entra tenant in case of an emergency by using the Windows Update for Business deployment service."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Deploy an expedited security update using the Windows Update for Business deployment service

With the Windows Update for Business deployment service, you can deploy Windows updates to devices in a Microsoft Entra tenant. Today, the deployment service supports [deployments](windowsupdates-deployments.md) of Windows 10/11 feature updates, expedited security updates, and driver updates. This topic focuses on deployments of expedited security updates. For information about deploying feature updates, see [Deploy a feature update](windowsupdates-deploy-update.md).  For information about deploying driver updates, see [Manage driver update](/graph/windowsupdates-manage-driver-update).

Expediting a security update overrides Windows Update for Business deferral policies so that the update is installed as quickly as possible. It can be useful when critical security events arise and you need to deploy the latest updates more rapidly than normal. However, while it can help to achieve compliance targets against a specific security update, it is not designed to be used every month. Instead, consider using [compliance deadlines for updates](/windows/deployment/update/wufb-compliancedeadlines).

When you deploy an expedited security update to a device, Windows Update offers the latest applicable update to the device if it has not yet received the update with the specified release date. For example, if you deploy the Windows 10 security update released on April 13, 2021 to a device that does not currently have the update, the device receives an expedited update. If the device already has the specified update or newer, it does not receive an expedited update.

Expedited security updates also have the following characteristics:

* The update starts right away rather than waiting for the next regular update scan, which occurs once every 22 hours by default.
* The update downloads and installs as quickly as possible.
* The update process overrides configured device policy settings, such as days until the device is forced to restart. After the expedited update is installed, the device returns to the current policy settings.

## Prerequisites

* Devices meet the [prerequisites for the deployment service](windowsupdates-concept-overview.md#prerequisites).
* Devices have installed the update described in [KB4023057 - Update for Windows 10 Update Service components](https://support.microsoft.com/topic/kb4023057-update-for-windows-10-update-service-components-fccad0ca-dc10-2e46-9ed1-7e392450fb3a) (or newer).

## Step 1: (Optional) Get a list of expeditable updates

You can query the deployment service catalog to get a list of updates that can be expedited to devices as content in a deployment.

Security updates are represented by the [qualityUpdateCatalogEntry](/graph/api/resources/windowsupdates-qualityupdatecatalogentry) type, with a **qualityUpdateClassification** of `security`. All Windows 10 and Windows 11 quality updates that are classified as security updates can be expedited and are tagged with the **isExpeditable** property set to `true` to identify them.

All quality updates refer to a list of [product revisions](/graph/api/resources/windowsupdates-productrevision). Add `$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions` to the request URL to identify the operating system builds that are affected by each quality update.

The following example shows how to query for all Windows 10 security updates that can be deployed as expedited updates by the deployment service. We recommend to only show the three most current updates, so the following example includes `$top=3`.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$top=3&$filter=isof('microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry') and microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/isExpeditable eq true&$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions&$orderby=releaseDateTime desc
```

### Response

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "b861eb80dbbb0819939b17afa87714497815ce15e79f15a7c1e10473870fbb4b",
            "displayName": "07/11/2023 - 2023.07 B SecurityUpdate for Windows 10 and later",
            "catalogName": "2023-07 Cumulative Update for Windows 10 and later",
            "shortName": "2023.07 B",
            "releaseDateTime": "2023-07-11T00:00:00Z",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves": [
                    {
                        "number": "CVE-2023-32046",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-32046"
                    },
                    {
                        "number": "CVE-2023-32049",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-32049"
                    },
                    {
                        "number": "CVE-2023-36874",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-36874"
                    },
                    {
                        "number": "CVE-2023-36884",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-36884"
                    },
                    {
                        "number": "ADV230001",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/ADV230001"
                    },
                    {
                        "number": "CVE-2023-35311",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-35311"
                    }
                ]
            }, 
            "productRevisions": [
                {
                    "id": "10.0.19044.3208",
                    "displayName": "Windows 10, version 21H2, build 19044.3208",
                    "releaseDateTime": "2023-07-11T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 3208
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5028166",
                        "url": "https://support.microsoft.com/help/5028166"
                    }
                },
                {
                    "id": "10.0.19045.3208",
                    "displayName": "Windows 10, version 22H2, build 19045.3208",
                    "releaseDateTime": "2023-07-11T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3208
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5028166",
                        "url": "https://support.microsoft.com/help/5028166"
                    }
                },
                {
                    "id": "10.0.22000.2176",
                    "displayName": "Windows 11, version 21H2, build 22000.2176",
                    "releaseDateTime": "2023-07-11T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 2176
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5028182",
                        "url": "https://support.microsoft.com/help/5028182"
                    }
                },
                {
                    "id": "10.0.22621.1992",
                    "displayName": "Windows 11, version 22H2, build 22621.1992",
                    "releaseDateTime": "2023-07-11T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 1992
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5028185",
                        "url": "https://support.microsoft.com/help/5028185"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "d38b17c487bdddb36c744281dd59d6bfd5352f2a4c9281a25a57c774c9268d34",
            "displayName": "06/13/2023 - 2023.06 B SecurityUpdate for Windows 10 and later",
            "catalogName": "2023-06 Cumulative Update for Windows 10 and later",
            "shortName": "2023.06 B",
            "releaseDateTime": "2023-06-13T00:00:00Z",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves": []
            }, 
            "productRevisions": [
                {
                    "id": "10.0.19044.3086",
                    "displayName": "Windows 10, version 21H2, build 19044.3086",
                    "releaseDateTime": "2023-06-13T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 3086
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5027215",
                        "url": "https://support.microsoft.com/help/5027215"
                    }
                },
                {
                    "id": "10.0.19045.3086",
                    "displayName": "Windows 10, version 22H2, build 19045.3086",
                    "releaseDateTime": "2023-06-13T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3086
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5027215",
                        "url": "https://support.microsoft.com/help/5027215"
                    }
                },
                {
                    "id": "10.0.22000.2057",
                    "displayName": "Windows 11, version 21H2, build 22000.2057",
                    "releaseDateTime": "2023-06-13T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 2057
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5027223",
                        "url": "https://support.microsoft.com/help/5027223"
                    }
                },
                {
                    "id": "10.0.22621.1848",
                    "displayName": "Windows 11, version 22H2, build 22621.1848",
                    "releaseDateTime": "2023-06-13T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 1848
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5027231",
                        "url": "https://support.microsoft.com/help/5027231"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "19fb4ab2c98a87688f62d88f8ae80070ae7a21c2f8a441a0dcee9d2d02b725f6",
            "displayName": "05/09/2023 - 2023.05 B SecurityUpdate for Windows 10 and later",
            "catalogName": "2023-05 Cumulative Update for Windows 10 and later",
            "shortName": "2023.05 B",
            "releaseDateTime": "2023-05-09T00:00:00Z",
            "deployableUntilDateTime": null,
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves": [
                    {
                        "number": "CVE-2023-29336",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-29336"
                    },
                    {
                        "number": "CVE-2023-24932",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-24932"
                    }
                ]
            }, 
            "productRevisions": [
                {
                    "id": "10.0.19042.2965",
                    "displayName": "Windows 10, version 20H2, build 19042.2965",
                    "releaseDateTime": "2023-05-09T00:00:00Z",
                    "version": "20H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19042,
                        "updateBuildRevision": 2965
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5026361",
                        "url": "https://support.microsoft.com/help/5026361"
                    }
                },
                {
                    "id": "10.0.19044.2965",
                    "displayName": "Windows 10, version 21H2, build 19044.2965",
                    "releaseDateTime": "2023-05-09T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 2965
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5026361",
                        "url": "https://support.microsoft.com/help/5026361"
                    }
                },
                {
                    "id": "10.0.19045.2965",
                    "displayName": "Windows 10, version 22H2, build 19045.2965",
                    "releaseDateTime": "2023-05-09T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 2965
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5026361",
                        "url": "https://support.microsoft.com/help/5026361"
                    }
                },
                {
                    "id": "10.0.22000.1936",
                    "displayName": "Windows 11, version 21H2, build 22000.1936",
                    "releaseDateTime": "2023-05-09T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 1936
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5026368",
                        "url": "https://support.microsoft.com/help/5026368"
                    }
                },
                {
                    "id": "10.0.22621.1702",
                    "displayName": "Windows 11, version 22H2, build 22621.1702",
                    "releaseDateTime": "2023-05-09T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 1702
                    },
                    "knowledgeBaseArticle": {
                        "id": "KB5026372",
                        "url": "https://support.microsoft.com/help/5026372"
                    }
                }
            ]
        }
    ]
}
```

## Step 2: Create a deployment

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. For quality updates, the content is specified using a target compliance date. When a deployment is created, a deployment audience is automatically created as a relationship.

When you deploy an expedited security update to a device, Windows Update offers an update that brings the device above the minimum compliance level specified. Depending on when each device scans and updates, some devices may receive newer updates (e.g. if there is a newer security update than the one corresponding to the desired minimum compliance level), but all devices meet the specified security update compliance standard. This behavior of offering the latest applicable update, indicated by the property **equivalentContent** being set to the default value `latestSecurity`, helps keep devices as secure as possible and prevents a device from receiving an expedited update followed by another regular update just days later.

You can configure the device restart grace period using the property **daysUntilForcedReboot** in the [user experience settings](/graph/api/resources/windowsupdates-userexperiencesettings) of the deployment. The grace period sets the amount of time after installation that the user can control the timing of when the device restarts. If the device has not restarted by the time the grace period expires, it restarts automatically.

Below is an example of creating a deployment for an expedited quality update. The targeted devices are specified in the next step.

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
            "isExpedited": true
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
    "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
    "id": "b5171742-1742-b517-4217-17b5421717b5",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",    
    "state": {
        "effectiveValue": "offering",
        "requestedValue": "none",
        "reasons": []
    },
    "content": {
        "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent"
    },
    "settings": {
        "schedule": null,
        "monitoring": null,
        "contentApplicability": null,
        "userExperience": {
            "daysUntilForcedReboot": 2
        },
        "expedite": {
            "isExpedited": true
        }
    }
}
```

## Step 3: Assign devices to the deployment audience

After a deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). When the deployment audience is successfully updated, Windows Update starts offering the update to the relevant devices according to the deployment settings.

Devices are automatically registered with the service when added to the members or exclusions collections of a deployment audience (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it does not already exist).

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

After all devices assigned to a deployment audience have been initially offered the update, it is possible that not all devices have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, it continues to make sure that Windows Update is offering the update to the assigned devices whenever they reconnect.
