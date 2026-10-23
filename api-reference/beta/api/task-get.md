---
title: "Get task_v2"
description: "Read the properties and relationships of task object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Get task_v2

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [task](../resources/task.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "task_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/task-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /planner/tasks_v2/{taskId}
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

If successful, this method returns a `200 OK` response code and a [task](../resources/task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_planner_v4_task"
}
-->
``` http
GET https://graph.microsoft.com/beta/planner/tasks_v2/{taskId}
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
  "value": {
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
}
```

