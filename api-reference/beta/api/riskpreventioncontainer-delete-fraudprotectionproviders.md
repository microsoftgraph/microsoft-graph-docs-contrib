---
title: "Delete fraudProtectionProviders"
description: "Delete a fraudProtectionProviders object."
author: "more-rasika"
ms.date: 10/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete fraudProtectionProviders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [fraudProtectionProvider](../resources/fraudprotectionprovider.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskpreventioncontainer_delete_fraudprotectionproviders" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskpreventioncontainer-delete-fraudprotectionproviders-permissions.md)]

[!INCLUDE [rbac-fraudprovider-apis-write](../includes/rbac-for-apis/rbac-fraudprovider-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /identity/riskPrevention/fraudProtectionProviders/{id}
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

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_fraudprotectionprovider"
}
-->
```http
DELETE https://graph.microsoft.com/beta/identity/riskprevention/fraudprotectionproviders/d474f94f-0fcf-4224-a165-c1c5bad1600f
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-fraudprotectionprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

