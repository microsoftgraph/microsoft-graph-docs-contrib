---
title: "Get historyItem"
description: "Read the properties and relationships of historyItem object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get historyItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [historyItem](../resources/historyitem.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "historyitem-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/historyitem-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/historyItems/{historyItemId}
GET /users/{usersId}/planner/plans_v2/{planId}/historyItems/{historyItemId}
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

If successful, this method returns a `200 OK` response code and a [historyItem](../resources/historyitem.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_historyitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/historyItems/{historyItemId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.historyItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.historyItem",
    "id": "02636413-50f8-710f-bed1-a0f488aa4e54",
    "planId": "String",
    "entityId": "String",
    "entityType": "String",
    "eventType": "String",
    "occurredDateTime": "String (timestamp)",
    "actor": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "oldData": "String",
    "newData": "String"
  }
}
```

