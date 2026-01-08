---
title: "ediscoveryHoldPolicy: retryPolicy"
description: "Trigger a retry of an eDiscovery hold policy."
author: "Kylefk"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
---

# ediscoveryHoldPolicy: retryPolicy

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger a retry of an [eDiscovery hold policy](../resources/security-ediscoveryholdpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoveryholdpolicy_retrypolicy" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoveryholdpolicy-retrypolicy-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/legalHolds/{ediscoveryHoldPolicyId}/retryPolicy
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoveryholdpolicythis.retrypolicy"
}
-->
```http
POST https://graph.microsoft.com/beta/security/cases/ediscoveryCases/c2940e86-57c0-4b6d-acce-9944bdfdf58a/legalHolds/21292627-70a5-47e1-aef1-5f70c6d0bb42/retryPolicy
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoveryholdpolicythisretrypolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoveryholdpolicythisretrypolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoveryholdpolicythisretrypolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoveryholdpolicythisretrypolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoveryholdpolicythisretrypolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoveryholdpolicythisretrypolicy-python-snippets.md)]
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
