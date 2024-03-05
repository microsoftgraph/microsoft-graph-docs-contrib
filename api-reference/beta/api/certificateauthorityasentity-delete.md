---
title: "Delete certificateAuthorityAsEntity"
description: "Delete a certificateAuthorityAsEntity object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete certificateAuthorityAsEntity
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object. You can't delete all items in the collection because this collection requires at least one object that is a root authority to always persist.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificateauthorityasentity_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthorityasentity-delete-permissions.md)]


[!INCLUDE [app-cert-config-apis](../includes/rbac-for-apis/app-cert-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}/trustedCertificateAuthorities/{trustedCertificateAuthorityId}
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

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_certificateauthorityasentity"
}
-->
``` http
DELETE /directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1/trustedCertificateAuthorities/a55a2232-07a4-4b40-8914-a120f46a633e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-certificateauthorityasentity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-certificateauthorityasentity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-certificateauthorityasentity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-certificateauthorityasentity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-certificateauthorityasentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-certificateauthorityasentity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-certificateauthorityasentity-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-certificateauthorityasentity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
