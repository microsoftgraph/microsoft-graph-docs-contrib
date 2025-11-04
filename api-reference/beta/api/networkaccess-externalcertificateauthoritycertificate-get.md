---
title: "Get externalCertificateAuthorityCertificate"
description: "Get a externalCertificateAuthorityCertificate object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get externalCertificateAuthorityCertificate

Namespace: microsoft.graph.networkaccess

Get a [externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_externalcertificateauthoritycertificate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-externalcertificateauthoritycertificate-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tls/externalCertificateAuthorityCertificates/{externalCertificateAuthorityCertificateId}
```

## Optional query parameters

This method supports the `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_externalcertificateauthoritycertificate",
  "sampleKeys": ["365da4f6-6194-401d-b787-b09815be36e3"]
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/tls/externalCertificateAuthorityCertificates/365da4f6-6194-401d-b787-b09815be36e3
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-externalcertificateauthoritycertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-externalcertificateauthoritycertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-externalcertificateauthoritycertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-externalcertificateauthoritycertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-externalcertificateauthoritycertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-externalcertificateauthoritycertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-externalcertificateauthoritycertificate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.externalCertificateAuthorityCertificate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "365da4f6-6194-401d-b787-b09815be36e3",
  "name": "Contoso Enterprise CA",
  "commonName": "Contoso Enterprise Root CA",
  "organizationName": "Contoso Ltd",
  "validity": {
    "startDateTime": "2025-02-10T00:00:00Z",
    "endDateTime": "2026-02-10T00:00:00Z"
  },
  "status": "active"
}
```
