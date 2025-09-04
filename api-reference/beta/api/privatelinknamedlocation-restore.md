---
title: "Restore privateLinkNamedLocation"
description: "Restore a deleted privateLinkNamedLocation object"
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# privateLinkNamedLocation: restore

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "privatelinknamedlocation-restore-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/privatelinknamedlocation-restore-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /privateLinkNamedLocation/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [namedLocation](../resources/namedlocation.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "privatelinknamedlocationthis.restore"
}
-->
``` http
POST https://graph.microsoft.com/beta/privateLinkNamedLocation/restore
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.namedLocation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.namedLocation",
    "deletedDateTime": "String (timestamp)",
    "id": "String (identifier)",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "modifiedDateTime": "String (timestamp)"
  }
}
```

