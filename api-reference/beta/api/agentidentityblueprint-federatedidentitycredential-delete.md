---
title: "Delete agentIdentityBlueprint federatedIdentityCredential"
description: "Deletes a federatedIdentityCredential object from an agentIdentityBlueprint."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
ms.date: 10/27/2025
---

# Delete agentIdentityBlueprint federatedIdentityCredential
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object from an agentIdentityBlueprint.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentidentityblueprint-federatedidentitycredential_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-federatedidentitycredential-delete-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

You can address the federated identity credential with either its **id** or **name**.
<!-- { "blockType": "ignored" } -->
```http
DELETE /applications/{id}/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/{federatedIdentityCredentialId}

DELETE /applications/{id}/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/{federatedIdentityCredentialName}

```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "agentidentityblueprint_delete_federatedidentitycredential"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/applications/bcd7c908-1c4d-4d48-93ee-ff38349a75c8/microsoft.graph.agentIdentityBlueprint/federatedIdentityCredentials/d9b7bf1e-429e-4678-8132-9b00c9846cc4
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/agentidentityblueprint-delete-federatedidentitycredential-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

