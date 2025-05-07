---
title: "incidentTask: executeResponseAction"
description: "Execute response action as part of incident remediation."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# incidentTask: executeResponseAction

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Execute response action as part of incident remediation. This operation will execute the response action associated with a specific incident task.

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code. The response will be empty as we plan to return the response action tracking object which will be modeled in Graph in the future.

## Error responses

### Action type not supported

Actions `text` and `submitIocRule` are not supported in automated execution.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json
```

```json
{
    "error": {
        "code": "UnsupportedActionType",
        "message": "Action type 'text' is not supported for automated execution.",
        "innerError": {
            "date": "2023-09-04T05:47:56",
            "request-id": "43067534-c43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "b041e97f-24d2-bf6a-1731-7e0de686464c"
        }
    }
}
```

### Action already in progress

Trying to execute an action that was already executed will result in a bad request.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json
```

```json
{
    "error": {
        "code": "ActionAlreadyInProgress",
        "message": "Response action is already in progress.",
        "innerError": {
            "date": "2023-09-04T06:57:56",
            "request-id": "43064123-b43a-4df8-a4d1-30660b99ac76",
            "client-request-id": "5451e97f-24d2-236a-1731-1e0de686464c"
        }
    }
}
```

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "incidenttask_executeresponseaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/incidentTasks/213213/executeResponseAction
```

### Response

The following example shows a successful response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
