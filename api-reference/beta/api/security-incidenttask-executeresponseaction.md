---
title: "Execute incident task response action"
description: "Execute a remediation action in Microsoft Defender XDR to resolve a security incident."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Execute incident task response action

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Execute a remediation action on a Microsoft Defender XDR incident task. The action type must be supported for automated execution.

## Permissions

One of the following permissions is required to call this API. To learn more, see [Permissions](/graph/permissions-overview).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-executeresponseaction"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-executeresponseaction-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/incidentTasks/{incidentTaskId}/executeResponseAction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Error responses

### Unsupported action type

The API supports only these action types:
- collectInvestigationPackage
- isolateDevice
- unRestrictAppExecution
- unIsolateDevice
- restrictAppExecution
- runAntiVirusScan
- stopAndQuarantineFile
- submitIocRule

```http
HTTP/1.1 400 Bad Request
Content-type: application/json
```

```json
{
    "error": {
        "code": "UnsupportedActionType",
        "message": "Action type '{action_type}' is not supported for automated execution.",
        "innerError": {
            "date": "2023-09-04T05:47:56",
            "request-id": "43067534-c43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "b041e97f-24d2-bf6a-1731-7e0de686464c"
        }
    }
}
```

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
        "message": "Invalid incidentTask id {id}",
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
            "request-id": "43064123-b43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "5451e97f-24d2-236a-1731-1e0de686464c"
        }
    }
}
```

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "postincidenttaskexecuteresponseaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidentTasks/213213/executeResponseAction
```

### Response
<!-- {
  "blockType": "response",
  "name": "postincidenttaskexecuteresponseaction",
  "isEmpty": true,
  "noContent": true
}
-->
``` http
HTTP/1.1 204 No Content
```
