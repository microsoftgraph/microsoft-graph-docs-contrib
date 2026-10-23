---
title: "List tasks_v2 for a user"
description: "Get a list of the task objects assigned to the user."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# List tasks_v2 for a user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [task](../resources/task.md) objects assigned to the user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "planneruser_list_tasks_v2" } -->
[!INCLUDE [permissions-table](../includes/permissions/planneruser-list-tasks_v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/planner/tasks_v2
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

If successful, this method returns a `200 OK` response code and a collection of [task](../resources/task.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "planneruser_list_tasks_v2"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/planner/tasks_v2
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
      "displayName": "String",
      "planId": "String",
      "bucketId": "String",
      "goalIds": [
        "String"
      ],
      "status": "String",
      "priority": "Integer",
      "percentComplete": "Integer",
      "startDateTime": {
        "@odata.type": "microsoft.graph.dateWithOptionalTime"
      },
      "dueDateTime": {
        "@odata.type": "microsoft.graph.dateWithOptionalTime"
      },
      "finishDateTime": {
        "@odata.type": "microsoft.graph.dateWithOptionalTime"
      },
      "notes": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "creationInfo": {
        "@odata.type": "microsoft.graph.creationInfo"
      },
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "completedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "completedDateTime": "String (timestamp)",
      "recurrence": {
        "@odata.type": "microsoft.graph.plannerTaskRecurrence"
      },
      "archivalInfo": {
        "@odata.type": "microsoft.graph.plannerArchivalInfo"
      },
      "planView": {
        "@odata.type": "microsoft.graph.taskPlanView"
      },
      "personalView": {
        "@odata.type": "microsoft.graph.taskPersonalView"
      },
      "parentTaskId": "String",
      "hasChildren": "Boolean",
      "isCritical": "Boolean",
      "hasChat": "Boolean",
      "capabilities": {
        "@odata.type": "microsoft.graph.taskCapability"
      },
      "extensions": {
        "@odata.type": "microsoft.graph.extensionFieldCollection"
      }
    }
  ]
}
```

