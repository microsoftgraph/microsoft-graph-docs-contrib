---
title: "List playbookDefinitions"
description: "List the read-only playbook catalog available to the signed-in user."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List playbookDefinitions

Namespace: microsoft.graph

List the read-only playbook catalog available to the signed-in user. This operation uses the [playbookDefinition](../resources/playbookdefinition.md) resource.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agenticsecurityroot_list_playbookdefinitions" } -->
[!INCLUDE [permissions-table](../includes/permissions/agenticsecurityroot-list-playbookdefinitions-permissions.md)]

The signed-in user must have access to the requested resources. Granting an OAuth permission does not override the service's access controls.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /security/agenticSecurity/playbookDefinitions
```

## Optional query parameters

This method supports the `$select` OData query parameter. Other query parameters aren't supported. When the response contains `@odata.nextLink`, follow that complete URL to retrieve the next page.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [playbookDefinition](../resources/playbookdefinition.md) objects in the response body.

## Examples

### Request

<!-- { "blockType": "request", "name": "agenticsecurityroot_list_playbookdefinitions" } -->
```http
GET https://graph.microsoft.com/beta/security/agenticSecurity/playbookDefinitions
```

### Response

The following example shows one playbook from the response.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.playbookDefinition)" } -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "732b84ae-26ad-4eb4-b4fb-f2f45d7571e6",
      "uniqueName": "investigate-incident",
      "displayName": "Investigate attack",
      "description": "Prepare a detailed report about an attack. This playbook outlines the full attack story, providing timelines, attack techniques, indicators, and affected assets.",
      "acceptedInputTypes": [
        "defenderIncidentId",
        "defenderAlertId"
      ]
    }
  ]
}
```
