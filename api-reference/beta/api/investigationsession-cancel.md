---
title: "investigationSession: cancel"
description: "Request asynchronous cancellation of an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# investigationSession: cancel

Namespace: microsoft.graph

Request asynchronous cancellation of an agentic session. This operation uses the [agentic session](../resources/investigationsession.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationsession_cancel" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationsession-cancel-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /security/agenticSecurity/sessions/{session-id}/cancel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code, the current [agentic session](../resources/investigationsession.md), and a `Location` header identifying the session. Acceptance doesn't mean cancellation has completed. Persisted session records aren't deleted.

### Monitor cancellation

[Get the same session](../api/investigationsession-get.md) to check its current state. You can use `$select=id,status,statusDetail` to request the identifier, overall processing status, and substatus. The `Location` URL also identifies this session.

- If **status** is `notStarted` or `running`, cancellation isn't confirmed. Wait before reading the session again rather than polling in a tight loop.
- A canceled session is reported as **status** `failed` with **statusDetail** `stopped`. See the [session lifecycle table](../api/investigationsession-get.md#session-status-and-status-details).
- A `succeeded` session completed successfully; that isn't evidence of cancellation. A `failed` status with another or unavailable detail doesn't, by itself, confirm that cancellation caused the failure.

Use GET requests to monitor progress, not repeated cancellation requests. An HTTP `200 OK` from Get session means the read succeeded, not that cancellation finished. No fixed cancellation duration is implied, and clients must handle unavailable optional detail values.

## Examples

### Request

The following example requests cancellation of a running investigation. The identifiers, session name, and response values are illustrative, not a captured live cancellation.

<!-- { "blockType": "request", "name": "investigationsession_cancel" } -->
```http
POST https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/cancel
```

### Response

The following example shows an accepted request while the session is still running.

> **Note:** The response object shown here might be shortened for readability.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50
Content-Type: application/json

{
  "id": "6c27d97a-8003-4993-a6e3-e3a8b5a52d50",
  "status": "running",
  "statusDetail": "inProgress",
  "displayName": "Investigate incident 12345"
}
```
