---
title: "Manage safeguards using the Windows Update for Business deployment service"
description: "When you deploy updates with the Windows Update for Business deployment service, it automatically prevents devices with issues from being offered the update."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: conceptualPageType
---

# Manage safeguards using the Windows Update for Business deployment service

When you deploy updates with the deployment service, the service automatically safeguards deployments by preventing devices with known or likely issues from being offered the update by Windows Update.

Safeguards are compatible with [deployments](/graph/windowsupdates-deployments) of Windows 11 and Windows 10 feature updates. Safeguard holds against known issues are available for deployments of Windows 11 and Windows 10 feature updates, and safeguard holds against likely issues are available for deployments of Windows 11.

## Apply all safeguards

By default, the deployment service applies all applicable safeguards to devices in a deployment. To benefit from safeguards, you don't need to specify anything additional when creating a deployment.

The following example demonstrates how to create a deployment with all safeguards applied.

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
    "settings": null,
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```

## Opt out of safeguards against likely issues

You can opt out of safeguards against likely issues in a deployment by configuring [safeguard settings](/graph/api/resources/windowsupdates-safeguardsettings). If necessary, you can also [opt out of safeguard holds for known issues by using the disable safeguards policy](/windows/deployment/update/safeguard-opt-out).

The following example demonstrates how to create a deployment without safeguards against likely issues. By specifying a **safeguardProfile** for the **category** of `likelyIssues` under the list of safeguard profiles to disable, you are configuring the deployment to offer the update to a device even if it is likely to have an update issue.

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
        "contentApplicability": {
            "safeguard": {
                "disabledSafeguardProfiles": [
                    {
                        "category": "likelyIssues"
                    }
                ]
            }
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
        "monitoring": null,
        "schedule": null,
        "userExperience": null,
        "contentApplicability": {
            "safeguard": {
                "disabledSafeguardProfiles": [
                    {
                        "@odata.type": "#microsoft.graph.windowsUpdates.safeguardProfile",
                        "category": "likelyIssues"
                    }
                ]
            }
        }
    },
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)"
}
```
