---
title: "List externalCertificateAuthorityCertificates"
description: "Get a list of the externalCertificateAuthorityCertificate objects and their properties."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List externalCertificateAuthorityCertificate objects

Namespace: microsoft.graph.networkaccess

Get a list of the [externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlstermination_list_externalcertificateauthoritycertificates" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlstermination-list-externalcertificateauthoritycertificates-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/tls/externalCertificateAuthorityCertificates
```

## Optional query parameters
This method supports the `$top`, `$count`, `$skip`, `$filter` and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_externalcertificateauthoritycertificate"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/tls/externalCertificateAuthorityCertificates
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-externalcertificateauthoritycertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-externalcertificateauthoritycertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-externalcertificateauthoritycertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-externalcertificateauthoritycertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-externalcertificateauthoritycertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-externalcertificateauthoritycertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-externalcertificateauthoritycertificate-python-snippets.md)]
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
      "id": "365da4f6-6194-401d-b787-b09815be36e3",
      "name": "Contoso Enterprise CA",
      "commonName": "Contoso Enterprise Root CA",
      "organizationName": "Contoso Ltd",
      "validity": {
        "@odata.type": "microsoft.graph.networkaccess.validityDate",
        "startDateTime": "2025-02-10T00:00:00Z",
        "endDateTime": "2026-02-10T00:00:00Z"
      },
      "status": "active"
    }
  ]
}
```
