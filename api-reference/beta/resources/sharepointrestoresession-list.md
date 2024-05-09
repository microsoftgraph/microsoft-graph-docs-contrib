---
title: "List sharePointRestoreSession objects"
description: "Get a list of the sharePointRestoreSession objects and their properties."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# List sharePointRestoreSession objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sharePointRestoreSession](../resources/sharepointrestoresession.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-list-sharepointrestoresessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-sharepointrestoresessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointRestoreSessions
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

If successful, this method returns a `200 OK` response code and a collection of [sharePointRestoreSession](../resources/sharepointrestoresession.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_sharepointrestoresession"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.backupRestore.sharePointRestoreSession)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.backupRestore.sharePointRestoreSession",
      "id": "1f1d563f-95ed-72e3-9096-998291f6e0f7",
      "status": "String",
      "createdDateTime": "String (timestamp)",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "completedDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "error": {
        "@odata.type": "microsoft.graph.publicError"
      }
    }
  ]
}
```

