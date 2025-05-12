---
title: "Update incident task"
description: "Update the status of an incident task in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update incident task

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a Microsoft Defender XDR incident task. You can only update the status property.

## Permissions

One of the following permissions is required to call this API. To learn more, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-update"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/incidentTasks/{incidentTaskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply only the values you want to update. Omitted properties retain their existing values.

|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.incidentTaskStatus|The task status. Values: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and the updated [security-incidentTask](../resources/security-incidenttask.md) object in the response body.

## Error responses

### Invalid task ID

The task ID must be a valid GUID.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json
```

```json
{
    "error": {
        "code": "BadRequest",
        "message": "Invalid Task Id: {id}",
        "innerError": {
            "date": "2023-09-04T05:47:56",
            "request-id": "43067534-c43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "b041e97f-24d2-bf6a-1731-7e0de686464c"
        }
    }
}
```

### Task not found

No task exists with the specified ID.

```http
HTTP/1.1 404 Not Found
Content-type: application/json
```

```json
{
    "error": {
        "code": "NotFound",
        "message": "taskId {id} not found",
        "innerError": {
            "date": "2023-09-04T05:47:56",
            "request-id": "43067534-c43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "b041e97f-24d2-bf6a-1731-7e0de686464c"
        }
    }
}
```

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_incidenttask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/incidentTasks/213213
Content-Type: application/json

{
    "status": "completed"
}
```

### Response
<!-- {
  "blockType": "response",
  "name": "update_incidenttask",
  "truncated": false,
  "@odata.type": "microsoft.graph.security.incidentTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "213213",
    "incident": {
        "id": "123"
    },
    "status": "completed",
    "source": "defenderExpertsXDR",
    "displayName": "Reset device testmachine20",
    "description": "Reset the machine",
    "createdDateTime": "2023-06-26T19:07:39.7433333Z",
    "createdByDisplayName": "Defender Experts",
    "lastModifiedDateTime": "2023-06-27T10:49:33.98Z",
    "lastModifiedByDisplayName": "bealfasi",
    "actionType": "text",
    "actionStatus": "notStarted",
    "responseAction": null
}
```
