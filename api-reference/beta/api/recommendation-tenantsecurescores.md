---
title: "recommendation: tenantSecureScores"
description: "Get historical Secure Score data for your Microsoft Entra tenant."
author: "sacsai"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: apiPageType
---

# recommendation: tenantSecureScores
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the historical Secure Score data for your Microsoft Entra tenant. This API returns the latest score and doesn't include the details for each control. To view detailed information, see the [secureScore resource type](../resources/securescores.md) and its associated methods.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "recommendation_tenantsecurescores" } -->
[!INCLUDE [permissions-table](../includes/permissions/recommendation-tenantsecurescores-permissions.md)]

[!INCLUDE [rbac-directory-recommendations-apis-read](../includes/rbac-for-apis/rbac-directory-recommendations-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/recommendations/tenantSecureScores
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [tenantSecureScore](../resources/tenantsecurescore.md) collection in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "recommendationthis.tenantsecurescores"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/recommendations/tenantSecureScores
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/recommendationthistenantsecurescores-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/recommendationthistenantsecurescores-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/recommendationthistenantsecurescores-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/recommendationthistenantsecurescores-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/recommendationthistenantsecurescores-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/recommendationthistenantsecurescores-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/recommendationthistenantsecurescores-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/recommendationthistenantsecurescores-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.tenantSecureScore)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.tenantSecureScore)",
    "value": [
        {
            "tenantScore": 11,
            "tenantMaxScore": 56,
            "createDateTime": "2023-11-01T00:00:00Z"
        },
        {
            "tenantScore": 11,
            "tenantMaxScore": 56,
            "createDateTime": "2023-10-31T00:00:00Z"
        },
        {
            "tenantScore": 11,
            "tenantMaxScore": 56,
            "createDateTime": "2023-10-30T00:00:00Z"
        },
        {
            "tenantScore": 11,
            "tenantMaxScore": 56,
            "createDateTime": "2023-10-29T00:00:00Z"
        }
    ]
}
```
