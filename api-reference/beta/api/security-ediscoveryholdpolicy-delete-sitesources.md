---
title: "Delete siteSource"
description: "Delete a siteSource object associated with an ediscoveryHoldPolicy."
author: "manjarisenthil"
ms.date: 02/11/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# Delete siteSource

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [siteSource](../resources/security-sitesource.md) object associated with an [ediscoveryHoldPolicy](../resources/security-ediscoveryholdpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_delete_sitesources" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-delete-sitesources-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/siteSources/{siteSourceId}
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
  "name": "delete_ediscoveryholdpolicy_sitesource"
}
-->
```http
DELETE https://graph.microsoft.com/beta/security/cases/ediscoveryCases/4c551bc5-f6f8-435c-8391-d1a08f1ffd5b/legalHolds/2114ada2-3958-4945-bb6e-66fe9fca4772/siteSources/08345ae2-bc5a-4d71-a18b-c490993959ee
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-ediscoveryholdpolicy-sitesource-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-ediscoveryholdpolicy-sitesource-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-ediscoveryholdpolicy-sitesource-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-ediscoveryholdpolicy-sitesource-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-ediscoveryholdpolicy-sitesource-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-ediscoveryholdpolicy-sitesource-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-ediscoveryholdpolicy-sitesource-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
