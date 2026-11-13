---
title: "Get agentic input"
description: "Get an input reference contained by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get agentic input

Namespace: microsoft.graph

Get an input reference contained by an agentic session. This operation uses the [agentic input](../resources/investigationinput.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "investigationinput_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/investigationinput-get-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/sessions/{session-id}/inputs/{input-id}
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [agentic input](../resources/investigationinput.md) object in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "investigationinput_get" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/sessions/6c27d97a-8003-4993-a6e3-e3a8b5a52d50/inputs/982f3662-a455-4f31-afd7-c9b483190888
```

### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.investigationInput" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "982f3662-a455-4f31-afd7-c9b483190888",
  "kind": "defenderIncidentId",
  "value": "12345",
  "displayName": "Incident 12345"
}
```
