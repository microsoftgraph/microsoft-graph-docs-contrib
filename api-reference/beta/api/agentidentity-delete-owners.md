---
title: "Remove agentIdentity owners"
description: "Remove an owner from a AgentIdentity."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Remove owners - agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an owner from a [agentIdentity](../resources/agentidentity.md) object. As a recommended best practice, agent identities should have at least two owners.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-delete-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-delete-owners-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /servicePrincipals/{id}/Microsoft.Graph.AgentIdentity/owners/{id}/$ref

```
## Request headers
| Name | Description|
|:---- |:---------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "serviceprincipal_delete_owners"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal/owners/{id}/$ref

```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
