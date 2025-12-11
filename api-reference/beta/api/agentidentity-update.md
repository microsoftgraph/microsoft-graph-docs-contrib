---
title: "Update agentIdentity"
description: "Update an agent identity ."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

Update the properties of an [agentIdentity](../resources/agentidentity.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-update-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

### Permissions for specific scenarios
- To update the **customSecurityAttributes** property:
  - In delegated scenarios, the admin must be assigned the *Attribute Assignment Administrator* role and the app granted the *CustomSecAttributeAssignment.ReadWrite.All* and *AgentIdentity.ReadWrite.All* delegated permissions.
  - In app-only scenarios using Microsoft Graph permissions, the app must be granted the *CustomSecAttributeAssignment.ReadWrite.All* application permission.

## HTTP request

```http
PATCH /servicePrincipals/{id}/microsoft.graph.agentIdentity
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body maintains their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

## Response

If successful, this method returns a `204 No Content` response code.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Examples

### Request
The following example shows a request.

```http
PATCH https://graph.microsoft.com/beta/servicePrincipals/{id}/microsoft.graph.agentIdentity
Content-type: application/json

{
  "displayName": "My New Name"
}
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```
