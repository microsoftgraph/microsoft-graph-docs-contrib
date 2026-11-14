---
title: "Create agentIdentityBlueprint"
description: "Create a new agent identity blueprint."
author: "zallison22"
ms.date: 05/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---


# Create agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agent identity blueprint](../resources/agentidentityblueprint.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "agentidentityblueprint_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-permissions.md)]

[!INCLUDE [rbac-agentid-apis-post](../includes/rbac-for-apis/rbac-agentid-apis-post.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /applications/microsoft.graph.agentIdentityBlueprint
```

## Request headers
| Name           | Description                |
|:---------------|:---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type   | application/json. Required.|

## Request body
In the request body, supply a JSON representation of [agent identity blueprint](../resources/agentidentityblueprint.md) object. You must specify the **displayName** property and **sponsors** relationship.

Optionally, set **isSingleInstance** to `true` to create a blueprint that supports at most one active agent identity per tenant without an agent identity blueprint principal. If omitted, it defaults to `false`, preserving the multi-instance topology. The value is immutable after creation, whether `true` or `false`.

## Response

If successful, this method returns a `201 Created` response code and an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object in the response body.

For information about errors returned by agent identity APIs, see [Microsoft agent identity platform error codes](/entra/agent-id/identity-platform/error-codes).

## Examples

### Example 1: Create a multi-instance agent identity blueprint

#### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/applications/microsoft.graph.agentIdentityBlueprint
Content-type: application/json

{
  "displayName": "Display name",
  "isSingleInstance": false,
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/beta/users/e64405d7-f156-4ce1-b1f5-b0d801c367f3"
   ]
}
```

#### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications/microsoft.graph.agentIdentityBlueprint/$entity",
    "id": "03ef14b0-ca33-4840-8f4f-d6e91916010e",
    "appId": "00001111-aaaa-2222-bbbb-3333cccc4444",
    "identifierUris": [],
    "createdDateTime": "2019-09-17T19:10:35.2742618Z",
    "displayName": "Display name",
    "publisherDomain": "contoso.com",
    "requiredResourceAccess": [],
    "signInAudience": "AzureADMyOrg"
}
```

### Example 2: Create a single-instance agent identity blueprint

#### Request

<!-- { "blockType": "request", "name": "create_single_instance_agent_identity_blueprint" } -->
```http
POST https://graph.microsoft.com/beta/applications/microsoft.graph.agentIdentityBlueprint
Content-Type: application/json

{
  "displayName": "Contoso Single-Instance Agent Blueprint",
  "isSingleInstance": true,
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481"
  ],
  "owners@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481"
  ]
}
```

#### Response

<!-- { "blockType": "response", "truncated": true, "@odata.type": "microsoft.graph.agentIdentityBlueprint" } -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.agentIdentityBlueprint",
  "id": "03ef14b0-ca33-4840-8f4f-d6e91916010e",
  "appId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "displayName": "Contoso Single-Instance Agent Blueprint",
  "isSingleInstance": true,
  "createdDateTime": "2026-11-02T23:00:00Z"
}
```
