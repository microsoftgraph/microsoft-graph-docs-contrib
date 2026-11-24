---
title: "List task objects"
description: "Get a list of the task objects and their properties."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List task objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the task objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plan_list_tasks" } -->
[!INCLUDE [permissions-table](../includes/permissions/plan-list-tasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/plans_v2/{planId}/tasks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [task](../resources/task.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "plan_list_tasks"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/plans_v2/{planId}/tasks
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.task"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.task",
      "id": "86d64a5b-109d-39c9-dd43-d7fffb6a1670",
      "displayName": "Product launch",
      "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
      "bucketId": "9c9c7a3d-5b7f-45e9-9df9-9f8b0f7edc9a",
      "status": "notStarted"
    }
  ]
}
```

