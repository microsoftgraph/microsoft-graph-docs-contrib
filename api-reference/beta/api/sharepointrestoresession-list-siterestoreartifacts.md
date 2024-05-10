---
title: "List siteRestoreArtifact objects"
description: "List all the siteRestoreArtifact under a SharePoint Restore Session for the tenant."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List siteRestoreArtifact objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [siteRestoreArtifact](../resources/siterestoreartifact.md) under a SharePoint Restore Session for the tenant

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-list-siterestoreartifacts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-list-siterestoreartifacts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifacts
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

If successful, this method returns a `200 OK` response code and a collection of [siteRestoreArtifact](../resources/siterestoreartifact.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_siterestoreartifact"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifacts
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.backupRestore.siteRestoreArtifact)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.backupRestore.siteRestoreArtifact",
      "id": "4459abc4-2f9c-8250-f7cb-f8ebecea34f5",
      "destinationType": "String",
      "status": "String",
      "startDateTime": "String (timestamp)",
      "completionDateTime": "String (timestamp)",
      "error": {
        "@odata.type": "microsoft.graph.publicError"
      },
      "restoredSiteId": "String",
      "restoredSiteName": "String",
      "restoredSiteWebUrl": "String"
    }
  ]
}
```

