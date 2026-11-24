---
title: "Update task"
description: "Update the properties of a task object."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
---

# Update task

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a task object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "task_update_permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/task-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /planner/tasks_v2/{taskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|If-Match|The complete ETag of the resource to update or delete. Required.|

Use the complete ETag returned by the latest read of this resource as the `If-Match` value. Don't construct or compare ETags yourself. A missing, invalid, or no-longer-usable ETag results in `412 Precondition Failed`. A conflicting change can result in `409 Conflict`; read the resource again and reconcile the changes before retrying. An older ETag doesn't necessarily fail when the service can merge nonconflicting changes.

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Title of the task.|
|bucketId|String|ID of the bucket that the task belongs to.|
|goalIds|String collection|IDs of the goals that the task is associated with.|
|status|plannerTaskStatus|Indicates progress on the task. The possible values are: `notStarted`, `inProgress`, `completed`, `blocked`, `unknownFutureValue`.|
|priority|Int32|Priority of the task. Supported values range from 0 (urgent) to 10 (low).|
|percentComplete|Int32|Percentage of the task's completion, ranging from 0 to 100.|
|startDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is scheduled to start.|
|dueDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is due.|
|finishDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task was finished.|
|notes|[itemBody](../resources/itembody.md)|Additional details or notes about the task.|
|recurrence|[plannerTaskRecurrence](../resources/plannertaskrecurrence.md)|Recurrence pattern for the task, if it repeats.|
|planView|[taskPlanView](../resources/taskplanview.md)|Task view settings scoped to the plan, such as applied category IDs.|
|personalView|[taskPersonalView](../resources/taskpersonalview.md)|Per-user personal view settings for the task, such as My Day membership.|
|parentTaskId|String|ID of the parent task, if this task is a subtask.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|


Send only the properties that you want to change. Don't include immutable or service-populated properties from a GET response.

For **startDateTime**, **dueDateTime**, and **finishDateTime**, specify only **date**. The **time**, **timeZone**, and **isTimeSpecified** components aren't writable.

Properties such as **parentTaskId** and **recurrence** depend on the plan's supported features. Don't treat this table as a guarantee that every feature is available for every plan.

## Response

If successful, this method returns a `200 OK` response code and an updated [task](../resources/task.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_planner_v4_task"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/planner/tasks_v2/{taskId}
If-Match: {etag}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.task",
  "percentComplete": 25
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.task",
  "id": "86d64a5b-109d-39c9-dd43-d7fffb6a1670",
  "displayName": "Product launch",
  "planId": "b3d9f9a2-3e14-4a4b-9b2b-6b6d9e6a2f31",
  "bucketId": "9c9c7a3d-5b7f-45e9-9df9-9f8b0f7edc9a"
}
```
