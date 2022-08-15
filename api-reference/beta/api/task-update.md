---
title: "Update task"
description: "Update the properties of a task object."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Update task

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [task](../resources/task.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|LifecycleWorkflows.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|LifecycleWorkflows.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH ** Entity URI for microsoft.graph.task not found
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|textBody|String|The task body in text format that typically contains information about the task. Inherited from [baseTask](../resources/basetask.md). Optional.|
|createdDateTime|DateTimeOffset|The date and time when the task was created. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md). Required.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md). Required.|
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header. The property value uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2020 would look like this: '2020-01-01T00:00:00Z'. Inherited from [baseTask](../resources/basetask.md). Required.|
|completedDateTime|DateTimeOffset|The date when the task was finished. Inherited from [baseTask](../resources/basetask.md). Optional.|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task is to be finished. Inherited from [baseTask](../resources/basetask.md). Optional.|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone when the task is to begin. Inherited from [baseTask](../resources/basetask.md). Optional.|
|importance|importance|The importance of the task. Possible values are: low, normal, high. The possible values are: low, normal, high. Inherited from [baseTask](../resources/basetask.md). The possible values are: `low`, `normal`, `high`. Required.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task. Inherited from [baseTask](../resources/basetask.md). Optional.|
|displayName|String|The name of the task. Inherited from [baseTask](../resources/basetask.md). Optional.|
|status|taskStatus_v2|Indicates the state or progress of the task. Possible values are: notStarted, inProgress, completed,unknownFutureValue. Inherited from [baseTask](../resources/basetask.md). The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Required.|
|viewpoint|[taskViewpoint](../resources/taskviewpoint.md)|Properties that are personal to a user such as **reminderDateTime** and **categories**. Inherited from [baseTask](../resources/basetask.md). Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [task](../resources/task.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_task"
}
-->
``` http
PATCH https://graph.microsoft.com/beta** Entity URI for microsoft.graph.task not found
Content-Type: application/json
Content-length: 571

{
  "@odata.type": "#microsoft.graph.task",
  "textBody": "String",
  "bodyLastModifiedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "importance": "String",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "displayName": "String",
  "status": "String",
  "viewpoint": {
    "@odata.type": "microsoft.graph.taskViewpoint"
  }
}
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.task",
  "id": "86d64a5b-109d-39c9-dd43-d7fffb6a1670",
  "textBody": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "bodyLastModifiedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "importance": "String",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "displayName": "String",
  "status": "String",
  "viewpoint": {
    "@odata.type": "microsoft.graph.taskViewpoint"
  }
}
```
