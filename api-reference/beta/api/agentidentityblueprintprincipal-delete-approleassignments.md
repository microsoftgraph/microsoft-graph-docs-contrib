---
title: "Delete agent identity blueprint principal appRoleAssignment"
description: "Delete an appRoleAssignment from an agent identity blueprint principal."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Delete agentIdentityBlueprintPrincipal appRoleAssignment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes an [appRoleAssignment](../resources/approleassignment.md) that a agent identity blueprint principal has been granted.

App roles that are assigned to agent identity blueprint principals are also known as [application permissions](/azure/active-directory/develop/v2-permissions-and-consent#permission-types). Deleting an app role assignment for a agent identity blueprint principal is equivalent to revoking the app-only permission grant.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprintprincipal_delete_approleassignments" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-delete-approleassignments-permissions.md)]

[!INCLUDE [rbac-approleassignments-apis-write](../includes/rbac-for-apis/rbac-approleassignments-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /servicePrincipals/{servicePrincipal-id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal/appRoleAssignments/{appRoleAssignment-id}
```

> [!NOTE]
> As a best practice, we recommend you delete app role assignments using the [Delete appRoleAssignedTo](serviceprincipal-delete-approleassignedto.md) method which deletes through the **appRoleAssignedTo** relationship of the _resource_ service principal, instead of this method.

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

The following example shows a request to delete an app role assignment.


<!-- {
  "blockType": "request",
  "name": "agentidentityblueprintprincipal_delete_approleassignment"
}-->

```http
DELETE https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipal-id}/Microsoft.Graph.AgentIdentityBlueprintPrincipal/appRoleAssignments/{appRoleAssignment-id}
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
