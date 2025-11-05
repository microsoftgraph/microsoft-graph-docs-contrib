---
title: "Delete agentIdentity"
description: "Delete agent identity."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Delete agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [agentIdentity](../resources/agentidentity.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentity_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-delete-permissions.md)]

## HTTP request

You can address the agent identity using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->
```http
DELETE /servicePrincipals/{id}/Microsoft.Graph.AgentIdentity
```
```http
DELETE /servicePrincipals(appId='{appId}')/Microsoft.Graph.AgentIdentity
```
## Request headers
| Name       | Description|
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Examples
### Request
The following example shows a request.


<!-- {
  "blockType": "request",
  "name": "delete_agentIdentity"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/Microsoft.Graph.AgentIdentity
```

### Response
The following example shows the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete agentIdentity",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->



