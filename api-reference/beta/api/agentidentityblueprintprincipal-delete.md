---
title: "Delete agentIdentityBlueprintPrincipal"
description: "Delete agentIdentityBlueprintPrincipal."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Delete agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object. When deleted, agent identity blueprint prinicpals are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprintprincipal_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-delete-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request
You can address the agent identity blueprint principal using either its **id** or **appId**.

```http
DELETE /servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal
DELETE /servicePrincipals(appId='{appId}')/microsoft.graph.agentIdentityBlueprintPrincipal
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


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_agentIdentityBlueprintPrincipal"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{id}/microsoft.graph.agentIdentityBlueprintPrincipal
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-agentidentityblueprintprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response. 
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```


