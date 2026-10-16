---
title: "List goal objects"
description: "Get a list of the goal objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List goal objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the goal objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "plan-list-goals-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/plan-list-goals-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/goals
GET /users/{usersId}/planner/plans_v2/{planId}/goals
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

If successful, this method returns a `200 OK` response code and a collection of [goal](../resources/goal.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_goal"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/goals
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.goal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.goal",
      "id": "9935021b-eda4-2af0-bcc7-8bd400583aa0",
      "displayName": "String",
      "planId": "String",
      "status": "String",
      "priority": "Integer",
      "startDate": "Date",
      "finishDate": "Date",
      "notes": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "archivalInfo": {
        "@odata.type": "microsoft.graph.plannerArchivalInfo"
      },
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "capabilities": {
        "@odata.type": "microsoft.graph.goalCapability"
      },
      "extensions": {
        "@odata.type": "microsoft.graph.extensionFieldCollection"
      }
    }
  ]
}
```

