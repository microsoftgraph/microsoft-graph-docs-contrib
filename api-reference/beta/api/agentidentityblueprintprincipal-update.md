---
title: "Update agentIdentityBlueprintPrincipal"
description: "Update the properties of an agentIdentityBlueprintPrincipal object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Update agentIdentityBlueprintPrincipal

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.

> [!IMPORTANT]
> - Agent identity blueprint principals inherit specific properties from their associated agent identity blueprint registrations. These properties are synchronized from the agent identity blueprint registration, but the synchronization isn't immediate or continuous. Sometimes, updating a agent identity blueprint principal may prompt the directory to refresh properties from the agent identity blueprint registration, causing updates that weren't part of the original request.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprintprincipal-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-update-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

### Permissions for specific scenarios
- To update the **customSecurityAttributes** property:
  - In delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* delegated permission.
  - In app-only scenarios using Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* application permission.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /servicePrincipals/{id}/graph.agentIdentityBlueprintPrincipal

```
## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

Provide the updated property values for the agent identity blueprint principal.

## Response

If successful, this method returns a `204 No Content` response code.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Example

### Request

The following example shows a request to update an agent identity blueprint principal.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_agentidentityblueprintprincipal"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{id}
Content-type: application/json

{
  "appRoleAssignmentRequired": true
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-agentidentityblueprintprincipal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-agentidentityblueprintprincipal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-agentidentityblueprintprincipal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-agentidentityblueprintprincipal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-agentidentityblueprintprincipal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-agentidentityblueprintprincipal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-agentidentityblueprintprincipal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
