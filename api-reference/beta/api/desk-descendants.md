---
title: "desk: descendants"
description: "Get all the descendants of a specific type under a desk."
author: tiwarisakshi02
ms.date: 06/09/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: apiPageType
---

# desk: descendants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the descendants of a specific type under a [desk](../resources/place.md).

This method always returns an empty list because a [desk](../resources/desk.md) have no descendant objects.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "desk-descendants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/desk-descendants-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /places/{id}/descendants/{placeType}
```

> **Note:**
> `{placeType}` can be any supported place type such as `microsoft.graph.desk`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an empty [place](../resources/place.md) collection.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "deskthis.descendants"
}
-->
``` http
GET https://graph.microsoft.com/beta/places/fa1e9144-b4ba-4e53-9186-2ef453f4017f/descendants/microsoft.graph.desk
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.place)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": []
}
```

