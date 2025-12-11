---
title: "Create agentIdentityBlueprintPrincipal object"
description: "Create a new agent identity blueprint principal object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---


# Create agentIdentityBlueprintPrincipal object

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "agentidentityblueprintprincipal_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprintprincipal-post-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal
```

## Request headers
| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of a [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object. The request body must contain  **appId** of the [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [agentIdentityBlueprintPrincipal](../resources/agentidentityblueprintprincipal.md) object in the response body.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Example

### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal
Content-type: application/json

{
  "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
}
```

### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals/microsoft.graph.agentIdentityBlueprintPrincipal/$entity",
  "@odata.type": "#microsoft.graph.agentIdentityBlueprintPrincipal",
  "id": "59e617e5-e447-4adc-8b88-00af644d7c92",
  "accountEnabled": true,
  "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
  "appRoleAssignmentRequired": false,
  "createdByAppId": "00000003-0000-0000-c000-000000000000",
  "displayName": "foo",
  "publisherName": "Contoso",
  "servicePrincipalNames": [
      "00001111-aaaa-2222-bbbb-3333cccc4444"
  ],
  "signInAudience": "AzureADMyOrg",
  "servicePrincipalType": "Application",
  "tags": [],
  "appRoles": [],
  "info": {
      "termsOfServiceUrl": null,
      "supportUrl": null,
      "privacyStatementUrl": null,
      "marketingUrl": null,
      "logoUrl": null
  },
  "publishedPermissionScopes": []
}
```
