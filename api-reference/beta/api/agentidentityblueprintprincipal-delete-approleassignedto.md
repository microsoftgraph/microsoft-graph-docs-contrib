---
title: "Delete agent identity blueprint appRoleAssignedTo"
description: "Delete an appRoleAssignment granted for an agent identity blueprint principal."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Delete agentIdentityBlueprintPrincipal appRoleAssignedTo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes an [appRoleAssignment](../resources/approleassignment.md) that a user, group, or client service principal has been granted for a resource agent identity blueprint principal.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprintprincipal_delete_approleassignedto" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-delete-approleassignedto-permissions.md)]

[!INCLUDE [rbac-approleassignments-apis-write](../includes/rbac-for-apis/rbac-approleassignments-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /servicePrincipals/{resource-SP-id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal/appRoleAssignedTo/{appRoleAssignment-id}
```

> [!NOTE]
> As a best practice, we recommend you use this method to delete app role assignments, instead of the [Delete appRoleAssignments ](serviceprincipal-delete-approleassignments.md) method which deletes through the **appRoleAssignments** relationship of the assigned user, group, or service principal.

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

The following example shows a request to delete an app role assignment from the resource agent identity blueprint principal.


<!-- {
  "blockType": "request",
  "name": "agentidentityblueprintprincipal_delete_approleassignedto"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{resource-SP-id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal/appRoleAssignedTo/{appRoleAssignment-id}
```

In this example, `{resource-SP-id}` is the id of the resource agent identity blueprint principal, and `{appRoleAssignment-id}` is the id of the appRoleAssignment object that represents an assignment to the user, group, or client service principal.

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```


