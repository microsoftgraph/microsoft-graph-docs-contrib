---
title: "incidentTask: executeResponseAction"
description: "Execute an automated remediation action on a Microsoft 365 Defender incident task."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# incidentTask: executeResponseAction

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Execute a remediation action on a Microsoft 365 Defender incident task. When you execute an action, Microsoft 365 Defender performs the necessary remediation steps associated with that action type.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-overview).

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

### Action type not supported

The API only supports executing these action types: collectInvestigationPackage, isolateDevice, unRestrictAppExecution, unIsolateDevice, restrictAppExecution, runAntiVirusScan, stopAndQuarantineFile, submitIocRule.

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

### Invalid Task ID

The provided incident task ID isn't a valid GUID.

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

### Task Not Found

No incident task exists with the provided ID.

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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "incidenttask_executeresponseaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidentTasks/213213/executeResponseAction
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/incidenttask-executeresponseaction.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/incidenttask-executeresponseaction.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/incidenttask-executeresponseaction.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
