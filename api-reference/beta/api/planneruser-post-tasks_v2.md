---
title: "Add task to a user"
description: "Add tasks_v2 by posting to the tasks_v2 collection."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Add task to a user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add tasks_v2 by posting to the tasks_v2 collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "planneruser-post-tasks-v2-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/planneruser-post-tasks-v2-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/planner/tasks_v2/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [task](../resources/task.md) object.

You can specify the following properties when creating a **task**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Title of the task. Required.|
|planId|String|ID of the plan that contains the task. Immutable after creation. Optional.|
|bucketId|String|ID of the bucket that the task belongs to. Optional.|
|goalIds|String collection|IDs of the goals that the task is associated with. Optional.|
|status|plannerTaskStatus|Indicates progress on the task. The possible values are: `notStarted`, `inProgress`, `completed`, `blocked`, `unknownFutureValue`. Optional.|
|priority|Int32|Priority of the task. Supported values range from 0 (urgent) to 10 (low). Required.|
|percentComplete|Int32|Percentage of the task's completion, ranging from 0 to 100. Required.|
|startDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is scheduled to start. Optional.|
|dueDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is due. Optional.|
|finishDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task was finished. Optional.|
|notes|[itemBody](../resources/itembody.md)|Additional details or notes about the task. Optional.|
|recurrence|[plannerTaskRecurrence](../resources/plannertaskrecurrence.md)|Recurrence pattern for the task, if it repeats. Optional.|
|planView|[taskPlanView](../resources/taskplanview.md)|Task view settings scoped to the plan, such as applied category IDs. Optional.|
|personalView|[taskPersonalView](../resources/taskpersonalview.md)|Per-user personal view settings for the task, such as My Day membership. Optional.|
|parentTaskId|String|ID of the parent task, if this task is a subtask. Optional.|
|hasChildren|Boolean|Indicates whether the task has subtasks. Optional.|
|isCritical|Boolean|Indicates whether the task is on the critical path, as computed from its dependencies. Optional.|
|hasChat|Boolean|Indicates whether the task has an associated chat. Optional.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select. Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [task](../resources/task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "planneruser_post_tasks_v2"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/planner/tasks_v2/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.task",
  "displayName": "Prepare quarterly report",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "bucketId": "9c9c7a3d-5b7f-45e9-9df9-9f8b0f7edc9a",
  "goalIds": [
    "3f8a1c9d-6b42-4e7a-9d31-8c2f6b9a4e17"
  ],
  "status": "notStarted",
  "priority": 5,
  "percentComplete": 0,
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateWithOptionalTime",
    "date": "2026-06-01",
    "isTimeSpecified": false
  },
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateWithOptionalTime",
    "date": "2026-06-15",
    "isTimeSpecified": false
  },
  "notes": {
    "@odata.type": "microsoft.graph.itemBody",
    "content": "Compile Q2 sales figures and prepare summary slides.",
    "contentType": "text"
  },
  "recurrence": {
    "@odata.type": "microsoft.graph.plannerTaskRecurrence",
    "schedule": {
      "@odata.type": "microsoft.graph.plannerRecurrenceSchedule",
      "patternStartDateTime": "2026-06-01T00:00:00Z",
      "pattern": {
        "@odata.type": "microsoft.graph.recurrencePattern",
        "type": "weekly",
        "interval": 1,
        "daysOfWeek": [
          "monday"
        ],
        "firstDayOfWeek": "sunday"
      }
    }
  },
  "planView": {
    "@odata.type": "microsoft.graph.taskPlanView",
    "appliedCategoryIds": [
      "e4f8a3c6-9d21-4b7a-8e42-6c1f9a3d5b28"
    ]
  },
  "personalView": {
    "@odata.type": "microsoft.graph.taskPersonalView",
    "isOnMyDay": true
  },
  "parentTaskId": "2c8f4b6a-9d31-4e7c-8a52-3f6b9d2e4c81",
  "hasChildren": false,
  "isCritical": false,
  "hasChat": false,
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection",
    "projectCode": "PRJ-4521"
  }
}
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
HTTP/1.1 204 No Content
Content-Type: application/json

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
```

