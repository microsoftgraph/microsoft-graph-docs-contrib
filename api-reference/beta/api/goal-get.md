---
title: "Get goal"
description: "Read the properties and relationships of goal object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get goal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [goal](../resources/goal.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "goal_get_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/goal-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/planner/plans_v2/{planId}/goals/{goalId}
GET /users/{usersId}/planner/plans_v2/{planId}/goals/{goalId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [goal](../resources/goal.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_goal"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/planner/plans_v2/{planId}/goals/{goalId}
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
  "@odata.type": "#microsoft.graph.goal",
  "id": "9935021b-eda4-2af0-bcc7-8bd400583aa0",
  "displayName": "Product launch",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "status": "notStarted"
}
```

