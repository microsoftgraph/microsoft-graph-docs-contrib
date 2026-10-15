---
title: "List historyItem objects"
description: "Get a list of the historyItem objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List historyItem objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the historyItem objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-list-historyitems-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-list-historyitems-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/historyItems
GET /users/{usersId}/planner/plans_v2/{planId}/historyItems
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

If successful, this method returns a `200 OK` response code and a collection of [historyItem](../resources/historyitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_historyitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/historyItems
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
  "value": [
    {
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
  ]
}
```

