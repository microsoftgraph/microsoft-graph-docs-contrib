---
title: "List restoreSessionBase objects"
description: "Get a list of the restoreSessionBase objects and their properties."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List restoreSessionBase objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [restoreSessionBase](../resources/restoresessionbase.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-list-restoresessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-restoresessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/restoreSessions
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

If successful, this method returns a `200 OK` response code and a collection of [restoreSessionBase](../resources/restoresessionbase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_restoresessionbase"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/restoreSessions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.backupRestore.restoreSessionBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.backupRestore.restoreSessionBase",
      "id": "8c3b5c30-3899-8712-95f9-f3c6b4e5324d",
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

