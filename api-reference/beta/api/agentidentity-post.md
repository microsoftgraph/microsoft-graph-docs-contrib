---
title: "Create agent identity"
description: "Create a new agent identity object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---


# Create agent identity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

Create a new [agentIdentity](../resources/agentidentity.md) object.


## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- { "blockType": "permissions", "name": "serviceprincipal_post_serviceprincipals" } -->
[!INCLUDE [permissions-table](../includes/permissions/serviceprincipal-post-serviceprincipals-permissions.md)]

[!INCLUDE [rbac-serviceprincipal-apis-create-update-upsert](../includes/rbac-for-apis/rbac-serviceprincipal-apis-create-update-upsert.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /servicePrincipals/Microsoft.Graph.AgentIdentity
```

## Request headers
| Name       | Description|
|:-----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type | application/json. Required. |

## Request body
In the request body, supply a JSON representation of a [agentIdentity](../resources/agentidentity.md) object. The request body must contain  **displayName** and **agentIdentityBlueprintAppId**.

## Response

If successful, this method returns a `201 Created` response code and a [agentIdentity](../resources/agentidentity.md) object in the response body.

## Examples
### Request
The following example shows a request.

```http
POST https://graph.microsoft.com/beta/servicePrincipals/Microsoft.Graph.AgentIdentity
Content-type: application/json

{
  "displayName": "My Agent Identity",
  "agentIdentityBlueprintId": "65415bb1-9267-4313-bbf5-ae259732ee12"
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

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create serviceprincipal",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
