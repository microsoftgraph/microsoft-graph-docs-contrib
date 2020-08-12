---
title: "List Todo tasks"
description: "Get the todoTasks from the tasks navigation property."
author: "avijityadav"
localization_priority: Normal
ms.prod: "Microsoft To Do"
doc_type: apiPageType
---

# List Todo tasks
Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the todoTasks from the tasks navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Tasks.ReadWrite|
|Delegated (personal Microsoft account)|Tasks.ReadWrite|
|Application|Not supported|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/todo/lists/{todoTaskListId}/tasks
GET /users/{id|userPrincipalName}/todo/lists/{todoTaskListId}/tasks
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [todoTask](../resources/todotask.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_todotask"
}
-->
``` http
GET https://graph.microsoft.com/beta/tasks
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "collection(microsoft.graph.todotask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.todoTask",
      "id": "721a35e2-35e2-721a-e235-1a72e2351a72",
      "body": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "completedDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "dueDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "importance": "String",
      "isReminderOn": "Boolean",
      "recurrence": {
        "@odata.type": "microsoft.graph.patternedRecurrence"
      },
      "reminderDateTime": {
        "@odata.type": "microsoft.graph.dateTimeTimeZone"
      },
      "status": "String",
      "title": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "bodyLastModifiedDateTime": "String (timestamp)"
    }
  ]
}
```

