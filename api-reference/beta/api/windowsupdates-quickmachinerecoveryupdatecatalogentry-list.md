---
title: "List Quick Machine Recovery Update Catalog Entry objects"
description: "Get a list of the recoveryUpdateCatalogEntry objects and their properties."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: apiPageType
---

# List recoveryUpdateCatalogEntry objects

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the recoveryUpdateCatalogEntry objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "windowsupdates-intune-recoveryupdatecatalogentry-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/windowsupdates-intune-recoveryupdatecatalogentry-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$expand=microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/productRevisions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recoveryUpdateCatalogEntry](../resources/windowsupdates-quickmachinerecoveryupdatecatalogentry.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_recoveryupdatecatalogentry"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/windows/updates/catalog/entries?$expand=microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/productRevisions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/productRevisions())%22",
    "value": [
        {
            "@odata.type": "#microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry",
            "id": "e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5",
            "displayName": "08/12/2025 - 2025.08 B CriticalUpdate for Windows 10 and later",
            "releaseDateTime": "2025-08-12T00:00:00Z",
            "catalogName": "2025-08 Quick machine recovery update for Windows 10 and later",
            "productRevisions@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(%27e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5%27)/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/microsoft.graph.windowsUpdates.qualityUpdateCatalogEntry/productRevisions%22",
            "productRevisions": [
                {
                    "id": "10.0.26100.2134",
                    "displayName": "Windows 11, version 24H2, build 26100.2134",
                    "releaseDateTime": "2025-08-12T00:00:00Z",
                    "version": "24H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26100,
                        "updateBuildRevision": 2134
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(%27e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5%27)/microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/productRevisions(%2710.0.26100.2134%27)/knowledgeBaseArticle/$entity%22",
                    "knowledgeBaseArticle": {
                        "id": "KB5029263",
                        "url": "https://support.microsoft.com/help/5029263"
                    }
                },
                {
                    "id": "10.0.26200.2134",
                    "displayName": "Windows 11, version 25H2, build 26200.2134",
                    "releaseDateTime": "2025-08-12T00:00:00Z",
                    "version": "25H2",
                    "product": "Windows 11",
                    "osBuild": {
                        "majorVersion": 10,
                        "minorVersion": 0,
                        "buildNumber": 26200,
                        "updateBuildRevision": 2134
                    },
                    "knowledgeBaseArticle@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/windows/updates/catalog/entries(%27e317aa8a0455ca604de95329b524ec921ca57f2e6ed3ff88aac757a7468998a5%27)/microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/microsoft.graph.windowsUpdates.recoveryUpdateCatalogEntry/productRevisions(%2710.0.22621.2134%27)/knowledgeBaseArticle/$entity%22",
                    "knowledgeBaseArticle": {
                        "id": "KB5029263",
                        "url": "https://support.microsoft.com/help/5029263"
                    }
                }
            ]
        },
        {
          ...
        },
        ...
    ]
}
```

