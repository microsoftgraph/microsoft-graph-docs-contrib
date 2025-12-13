---
title: "Create agentIdentity"
description: "Create a new agent identity object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---


# Create agentIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [agentIdentity](../resources/agentidentity.md) object from the specified [agent identity blueprint](../resources/agentidentityblueprint.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "serviceprincipal_post_serviceprincipals" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-post-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/microsoft.graph.agentIdentity
```

## Request headers
| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of a [agentIdentity](../resources/agentidentity.md) object. The request body must contain  **displayName**, **agentIdentityBlueprintAppId**, and a valid **sponsor** reference.

## Response

If successful, this method returns a `201 Created` response code and a [agentIdentity](../resources/agentidentity.md) object in the response body.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Examples
### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity
Content-type: application/json

{
  "displayName": "My Agent Identity",
  "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12",
  "sponsors@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/acc9f0a1-9075-464f-9fe7-049bf1ae6481",
    "https://graph.microsoft.com/v1.0/groups/47309f33-e0ff-7be6-defe-28b504c8cd2e"
  ]
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#servicePrincipals/$entity",
    "@odata.type": "#microsoft.graph.agentIdentity",
    "id": "59e617e5-e447-4adc-8b88-00af644d7c92",
    "createdByAppId": "f98c895e-6ce2-4f5b-a31b-da7e48f25daa",
    "displayName": "My Agent Identit",
    "servicePrincipalType": "ServiceIdentity",
    "tags": [],
    "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12"
}
```