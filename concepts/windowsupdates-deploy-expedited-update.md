---
title: "Deploy an expedited quality update using the Windows Update for Business deployment service"
description: "Follow these steps to deploy expedited Windows quality updates to devices in a Microsoft Entra tenant in case of an emergency by using the Windows Update for Business deployment service."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Deploy an expedited quality update using the Windows Update for Business deployment service

With the Windows Update for Business deployment service, you can deploy Windows updates to devices in a Microsoft Entra tenant. Today, the deployment service supports [deployments](windowsupdates-deployments.md) of Windows 10/11 feature updates, expedited quality updates, and driver updates. This topic focuses on deployments of expedited quality updates. For information about deploying feature updates, see [Deploy a feature update](windowsupdates-deploy-update.md).  For information about deploying driver updates, see [Manage driver update](./windowsupdates-manage-driver-update.md).

Expediting a quality update overrides Windows Update for Business deferral policies so that the update is installed as quickly as possible. It can be useful when critical quality events arise and you need to deploy the latest updates more rapidly than normal. However, while it can help to achieve compliance targets against a specific quality update, it's not designed to be used every month. Instead, consider using [compliance deadlines for updates](/windows/deployment/update/wufb-compliancedeadlines).

When you deploy an expedited quality update to a device, Windows Update offers the latest applicable update to the device if it has not yet received the update with the specified release date. For example, if you deploy the Windows 10 security update released on April 13, 2021, to a device that doesn't currently have the update, the device receives an expedited update. If the device already has the specified update or newer, it doesn't receive an expedited update.

Expedited quality updates also have the following characteristics:

* The update starts right away rather than waiting for the next regular update scan, which occurs once every 22 hours by default.
* The update downloads and installs as quickly as possible.
* The update process overrides configured device policy settings, such as days until the device is forced to restart. After the expedited update is installed, the device returns to the current policy settings.

## Prerequisites

* Devices meet the [prerequisites for the deployment service](windowsupdates-concept-overview.md#prerequisites).
* Devices have installed the update described in [KB4023057 - Update for Windows 10 Update Service components](https://support.microsoft.com/topic/kb4023057-update-for-windows-10-update-service-components-fccad0ca-dc10-2e46-9ed1-7e392450fb3a) (or newer).
* To verify that your devices meet the prerequisites for receiving an expedited update, use the [Readiness test for expediting updates](/windows/deployment/update/deployment-service-expedited-updates#readiness-test-for-expediting-updates).

## Step 1: (Optional) Get a list of expeditable updates

You can query the deployment service catalog to get a list of updates that can be expedited to devices as content in a deployment.

Quality updates are represented by the [qualityUpdateCatalogEntry](/graph/api/resources/windowsupdates-qualityupdatecatalogentry) type, with a **qualityUpdateClassification** of `security` or `nonSecurity`. All Windows 10 quality updates that are classified as `security` and all Windows 11 quality updates that are classified as `security` or `non-security` can be expedited.

All quality updates refer to a list of [product revisions](/graph/api/resources/windowsupdates-productrevision). Add `$expand=microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions` to the request URL to identify the operating system builds that are affected by each quality update.

The following example shows how to query for all Windows 10 quality updates that can be deployed as expedited updates by the deployment service. We recommend to only show the three most current updates, so the following example includes `$top=3`.

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
            "id": "7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e",
            "displayName": "12/12/2023 - 2023.12 B SecurityUpdate for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-12-12T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2023-12 Cumulative Update for Windows 10 and later",
            "shortName": "2023.12 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "moderate",
                "maxBaseScore": 9.6,
                "exploitedCves@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves",
                "exploitedCves": []
            },
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.3803",
                    "displayName": "Windows 10, version 22H2, build 19045.3803",
                    "releaseDateTime": "2023-12-12T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3803
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.3803')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5033372",
                        "url": "https://support.microsoft.com/help/5033372"
                    }
                },
                {
                    "id": "10.0.22621.2861",
                    "displayName": "Windows 11, version 22H2, build 22621.2861",
                    "releaseDateTime": "2023-12-12T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 2861
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.2861')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5033375",
                        "url": "https://support.microsoft.com/help/5033375"
                    }
                },
                {
                    "id": "10.0.22000.2652",
                    "displayName": "Windows 11, version 21H2, build 22000.2652",
                    "releaseDateTime": "2023-12-12T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 2652
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22000.2652')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5033369",
                        "url": "https://support.microsoft.com/help/5033369"
                    }
                },
                {
                    "id": "10.0.19044.3803",
                    "displayName": "Windows 10, version 21H2, build 19044.3803",
                    "releaseDateTime": "2023-12-12T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 3803
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19044.3803')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5033372",
                        "url": "https://support.microsoft.com/help/5033372"
                    }
                },
                {
                    "id": "10.0.22631.2861",
                    "displayName": "Windows 11, version 23H2, build 22631.2861",
                    "releaseDateTime": "2023-12-12T00:00:00Z",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 2861
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('7752017d0d3dd343836d0a6952d51380c8faa114466fe0944f3f40e0dcbc491e')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.2861')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5033375",
                        "url": "https://support.microsoft.com/help/5033375"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "936705f27e4efc863ae4e6f2004da8cc6a51e035902d3367def02faf263e9fbd",
            "displayName": "11/30/2023 - 2023.11 D Update for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-11-30T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "nonSecurity",
            "catalogName": "2023-11 Cumulative Update Preview for Windows 10 and later",
            "shortName": "2023.11 D",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": null,
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('936705f27e4efc863ae4e6f2004da8cc6a51e035902d3367def02faf263e9fbd')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.3758",
                    "displayName": "Windows 10, version 22H2, build 19045.3758",
                    "releaseDateTime": "2023-11-30T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3758
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('936705f27e4efc863ae4e6f2004da8cc6a51e035902d3367def02faf263e9fbd')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.3758')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032278",
                        "url": "https://support.microsoft.com/help/5032278"
                    }
                },
                {
                    "id": "10.0.22621.2792",
                    "displayName": "Windows 11, version 22H2, build 22621.2792",
                    "releaseDateTime": "2023-12-04T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 2792
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('936705f27e4efc863ae4e6f2004da8cc6a51e035902d3367def02faf263e9fbd')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.2792')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032288",
                        "url": "https://support.microsoft.com/help/5032288"
                    }
                },
                {
                    "id": "10.0.22631.2792",
                    "displayName": "Windows 11, version 23H2, build 22631.2792",
                    "releaseDateTime": "2023-12-04T00:00:00Z",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 2792
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('936705f27e4efc863ae4e6f2004da8cc6a51e035902d3367def02faf263e9fbd')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.2792')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032288",
                        "url": "https://support.microsoft.com/help/5032288"
                    }
                }
            ]
        },
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry",
            "id": "97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71",
            "displayName": "11/14/2023 - 2023.11 B SecurityUpdate for Windows 10 and later",
            "deployableUntilDateTime": null,
            "releaseDateTime": "2023-11-14T00:00:00Z",
            "isExpeditable": true,
            "qualityUpdateClassification": "security",
            "catalogName": "2023-11 Cumulative Update for Windows 10 and later",
            "shortName": "2023.11 B",
            "qualityUpdateCadence": "monthly",
            "cveSeverityInformation": {
                "maxSeverity": "critical",
                "maxBaseScore": 9.8,
                "exploitedCves@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/cveSeverityInformation/exploitedCves",
                "exploitedCves": [
                    {
                        "number": "CVE-2023-36036",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-36036"
                    },
                    {
                        "number": "CVE-2023-36033",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-36033"
                    },
                    {
                        "number": "CVE-2023-36025",
                        "url": "https://msrc.microsoft.com/update-guide/vulnerability/CVE-2023-36025"
                    }
                ]
            },
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions",
            "productRevisions": [
                {
                    "id": "10.0.19045.3693",
                    "displayName": "Windows 10, version 22H2, build 19045.3693",
                    "releaseDateTime": "2023-11-14T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19045,
                        "updateBuildRevision": 3693
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19045.3693')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032189",
                        "url": "https://support.microsoft.com/help/5032189"
                    }
                },
                {
                    "id": "10.0.22621.2715",
                    "displayName": "Windows 11, version 22H2, build 22621.2715",
                    "releaseDateTime": "2023-11-14T00:00:00Z",
                    "version": "22H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22621,
                        "updateBuildRevision": 2715
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22621.2715')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032190",
                        "url": "https://support.microsoft.com/help/5032190"
                    }
                },
                {
                    "id": "10.0.22000.2600",
                    "displayName": "Windows 11, version 21H2, build 22000.2600",
                    "releaseDateTime": "2023-11-14T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22000,
                        "updateBuildRevision": 2600
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22000.2600')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032192",
                        "url": "https://support.microsoft.com/help/5032192"
                    }
                },
                {
                    "id": "10.0.19044.3693",
                    "displayName": "Windows 10, version 21H2, build 19044.3693",
                    "releaseDateTime": "2023-11-14T00:00:00Z",
                    "version": "21H2",
                    "product": "Windows 10",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 19044,
                        "updateBuildRevision": 3693
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.19044.3693')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032189",
                        "url": "https://support.microsoft.com/help/5032189"
                    }
                },
                {
                    "id": "10.0.22631.2715",
                    "displayName": "Windows 11, version 23H2, build 22631.2715",
                    "releaseDateTime": "2023-11-14T00:00:00Z",
                    "version": "23H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 22631,
                        "updateBuildRevision": 2715
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries('97b5e4baece0047a63eca88c4e7c93fb2d5fb5667cef0b417f6e51e1cc2f4c71')/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions('10.0.22631.2715')/knowledgeBaseArticle/$entity",
                    "knowledgeBaseArticle": {
                        "id": "KB5032190",
                        "url": "https://support.microsoft.com/help/5032190"
                    }
                }
            ]
        }
    ]
}
```

## Step 2: Create a deployment

A [deployment](/graph/api/resources/windowsupdates-deployment) specifies content to deploy, how and when to deploy the content, and the targeted devices. For quality updates, the content is specified using a target compliance date. When a deployment is created, a deployment audience is automatically created as a relationship.

When you deploy an expedited quality update to a device, Windows Update offers an update that brings the device above the minimum compliance level specified. Depending on when each device scans and updates, some devices might receive newer updates (for example, a newer security update than the one that corresponds to the minimum compliance level), but all devices meet the specified security update compliance standard. This behavior of offering the latest applicable update, indicated by the property **equivalentContent** being set to the default value `latestSecurity`, helps keep devices as secure as possible and prevents a device from receiving an expedited update followed by another regular update just days later.

>**Note:** If you deploy an expedited non-security quality update, it **must** be the latest quality update released. For example, if you expedite the 11D release after 12B has been released, no update will be expedited to the devices in the deployment.

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

After deployment is created, you can assign devices to the [deployment audience](/graph/api/resources/windowsupdates-deploymentaudience). When the deployment audience is successfully updated, Windows Update offers the update to the relevant devices according to the deployment settings.

Devices are automatically registered with the service when added to the members or exclusions collections of a deployment audience (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it doesn't already exist).

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

While deployment is in progress, you can pause the deployment by updating its **state** and update its audience members and exclusions.

## After a deployment

After all devices assigned to a deployment audience have been initially offered the update, not all devices may have started or completed the update, due to factors like device connectivity. As long as the deployment still exists, it ensures that Windows Update is offering the update to the assigned devices whenever they reconnect.
