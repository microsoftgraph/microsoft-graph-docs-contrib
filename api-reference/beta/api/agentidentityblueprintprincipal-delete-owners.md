---
title: "Remove agentIdentityBlueprintPrincipal owners"
description: "Remove an owner from a agentIdentityBlueprintPrincipal."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Remove agentIdentityBlueprintPrincipal owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an owner from a [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object. As a recommended best practice, agent identity blueprint principals should have at least two owners.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-delete-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-delete-owners-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]


## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal/owners/{id}/$ref
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
  "name": "agentIdentityblueprintprincipal_delete_owners"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal/owners/{id}/$ref
```


### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

