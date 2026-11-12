---
title: "Get agentic session"
description: "Get an agentic session and poll its processing status."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get agentic session

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an agentic session and poll its processing status. This operation uses the [agentic session](../resources/investigationsession.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationsession_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationsession-get-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported. For status polling, use `$select=status,statusDetail` to request both the overall processing status and its substatus.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentic session](../resources/investigationsession.md) object in the response body.

### Session status and status details

The **status** property is the session's overall processing state. The **statusDetail** property is a String substatus that provides more context, such as whether work is in progress, waiting for input, or canceled. It isn't an additional **status** enum value.

The following table shows the session lifecycle mappings. Different lifecycle conditions can produce the same **status** and **statusDetail** combination, so those combinations appear more than once.

|Meaning|status|statusDetail|
|:---|:---|:---|
|The session was created and processing is in progress.|`running`|`inProgress`|
|The newly created session is waiting for input.|`running`|`waitingForInput`|
|The session is actively processing.|`running`|`inProgress`|
|Active processing is waiting for input.|`running`|`waitingForInput`|
|The session is idle and completed successfully.|`succeeded`|`completed`|
|The session is idle but still requires input.|`running`|`waitingForInput`|
|The session is stopping or archiving and is reported as canceled.|`failed`|`canceled`|
|The session is stopping or archiving with input still pending, but is reported as canceled.|`failed`|`canceled`|
|The session was stopped or archived.|`failed`|`canceled`|
|The session was stopped or archived; pending input doesn't change that result.|`failed`|`canceled`|
|Archiving failed and the session is reported as canceled.|`failed`|`canceled`|
|Archiving failed; pending input doesn't change the cancellation result.|`failed`|`canceled`|
|The underlying state is missing or unrecognized and no input is pending.|`notStarted`|`completed`|
|The underlying state is missing or unrecognized, but input is required.|`running`|`waitingForInput`|

Use **status** to determine whether processing succeeded. In the missing-state fallback, **statusDetail** can be `completed` while **status** is `notStarted`; that combination doesn't indicate success. Successful completion requires **status** to be `succeeded`. An HTTP `200 OK` only means the read succeeded.

A canceled session is reported as **status** `failed` with **statusDetail** `canceled`. Don't rely on `stopped` as the cancellation detail.

## Examples

### Example 1: Get an agentic session

#### Request

<!-- { "blockType": "request", "name": "investigationsession_get" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "6c27d97a-8003-4993-a6e3-e3a8b5a52d50",
  "status": "running",
  "statusDetail": "inProgress",
  "displayName": "Investigate incident 12345",
  "createdDateTime": "2026-10-22T10:00:00Z",
  "lastModifiedDateTime": "2026-10-22T10:00:10Z",
  "initiatedBy": {
    "user": {
      "id": "00000000-0000-4000-8000-000000000001"
    }
  },
  "tags": []
}
```

### Example 2: Get the session status and substatus

#### Request

The following example uses `$select` to request both **status** and **statusDetail**.

<!-- { "blockType": "request", "name": "investigationsession_get_status_and_status_detail" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50?$select=status,statusDetail
```

#### Response

The following example shows the response.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationSession" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "status": "running",
  "statusDetail": "inProgress"
}
```
