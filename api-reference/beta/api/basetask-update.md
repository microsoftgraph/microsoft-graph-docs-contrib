---
title: "Update baseTask"
description: "Update the properties of a baseTask object."
author: "devindrajit"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update baseTask (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi](../includes/todo-deprecate-basetaskapi.md)]

Update the properties of a [baseTask](../resources/basetask.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "basetask_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/basetask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}
PATCH /users/{userId|userPrincipalName}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}

PATCH /me/tasks/alltasks/{baseTaskId}
PATCH /users/{userId|userPrincipalName}/tasks/alltasks/{baseTaskId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|textBody|String|The task body in text format that typically contains information about the task.|
|createdDateTime|DateTimeOffset|The date in the specified time zone that the task was finished.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. By default, it is in UTC. You can provide a custom time zone in the request header.|
|bodyLastModifiedDateTime|DateTimeOffset|The date and time when the task body was last modified. By default, it is in UTC. You can provide a custom time zone in the request header.|
|completedDateTime|DateTimeOffset|The date in the specified time zone that the task was finished.|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone that the task is to be finished.|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|The date in the specified time zone when the task is to begin.|
|importance|importance|The importance of the event. The possible values are: `low`, `normal`, `high`.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|The recurrence pattern for the task.|
|displayName|String|A brief description of the task.|
|status|taskStatus_v2|Indicates state or progress of the task. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`.|
|viewpoint|[taskViewpoint](../resources/taskviewpoint.md)|Properties that are personal to a user such as reminderDateTime.|



## Response

If successful, this method returns a `200 OK` response code and an updated [baseTask](../resources/basetask.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_basetask",
  "sampleKeys": ["AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt", "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/tasks/lists/AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt/tasks/AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT
Content-Type: application/json
Content-length: 634

{
  "@odata.type": "#microsoft.graph.task",
  "textBody":  "String",
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-basetask-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
**Note:** The response object shown here might be shortened for readability.
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
    "@odata.etag": "W/\"kOO4xOT//0qFRAqk3TNe0QAAA1uzSQ==\"",
    "importance": "normal",
    "status": "notStarted",
    "displayName": "T-2",
    "createdDateTime": "2021-11-15T14:38:25.6868632Z",
    "lastModifiedDateTime": "2021-11-15T15:51:13.3606631Z",
    "id": "AAkALgAAAAAAHYQDEapmEc2byACqAC-EWg0AkOO4xOT",
    "textBody":  "",
    "parentList": {
        "id": "AAMkAGVjMzJmMWZjLTgyYjgtNGIyNi1hOGQ0LWRjMjNmMGRmOWNiYQAuAAAAAAAboFsPFj7gQpLAt"
    }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Update baseTask",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/me:
      /me/tasks/lists/{var}/tasks/{var}
      Uri path requires navigating into unknown object hierarchy: missing property 'tasks' on 'user'. Possible issues:
  	 1) Doc bug where 'tasks' isn't defined on the resource.
  	 2) Doc bug where 'tasks' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'user' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
