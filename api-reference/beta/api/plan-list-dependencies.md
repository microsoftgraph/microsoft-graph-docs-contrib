---
title: "List dependency objects"
description: "Get a list of the dependency objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List dependency objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the dependency objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-list-dependencies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-list-dependencies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/dependencies
GET /users/{usersId}/planner/plans_v2/{planId}/dependencies
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

If successful, this method returns a `200 OK` response code and a collection of [dependency](../resources/dependency.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_dependency"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/dependencies
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.dependency"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.dependency",
      "id": "97f05daa-0479-6fa3-cb09-28d363132000",
      "sourceItemId": "String",
      "targetItemId": "String",
      "constraint": "String",
      "creationInfo": {
        "@odata.type": "microsoft.graph.creationInfo"
      },
      "archivalInfo": {
        "@odata.type": "microsoft.graph.plannerArchivalInfo"
      },
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "extensions": {
        "@odata.type": "microsoft.graph.extensionFieldCollection"
      }
    }
  ]
}
```

