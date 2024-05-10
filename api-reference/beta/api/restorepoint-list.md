---
title: "List restorePoint objects"
description: "Get a list of the restorePoint objects and their properties."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# List restorePoint objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [restorePoint](../resources/restorepoint.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "siterestoreartifact-list-restorepoint-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/siterestoreartifact-list-restorepoint-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/restorePoints
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

If successful, this method returns a `200 OK` response code and a collection of [restorePoint](../resources/restorepoint.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_restorepoint"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/restorePoints
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.backupRestore.restorePoint)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.backupRestore.restorePoint",
      "id": "897ad3fa-fc5a-9f41-b566-969202fc1d99",
      "protectionDateTime": "String (timestamp)",
      "expirationDateTime": "String (timestamp)",
      "tags": "String"
    }
  ]
}
```

