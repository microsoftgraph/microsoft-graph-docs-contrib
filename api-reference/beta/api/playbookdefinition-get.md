---
title: "Get playbookDefinition"
description: "Get a playbook definition from the catalog or the definition selected by an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get playbookDefinition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a playbook definition from the catalog or the definition selected by an agentic session. This operation uses the [playbookDefinition](../resources/playbookdefinition.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "playbookdefinition_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/playbookdefinition-get-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/playbookDefinitions/{playbookDefinition-id}
GET /security/agenticSecurity/sessions/{session-id}/playbookDefinition
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

If successful, this method returns a `200 OK` response code and a [playbookDefinition](../resources/playbookdefinition.md) object in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "playbookdefinition_get" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions/8d983728-49c3-43cc-b770-14e6d45475f4
```

### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.playbookDefinition" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "8d983728-49c3-43cc-b770-14e6d45475f4",
  "uniqueName": "investigate-incident",
  "displayName": "Investigate incident",
  "description": "Investigate the supplied security incident.",
  "acceptedInputTypes": [
    "defenderIncidentId"
  ]
}
```
