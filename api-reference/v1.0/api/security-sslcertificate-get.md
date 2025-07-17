---
title: "Get sslCertificate"
description: "Get the properties and relationships of an sslCertificate object."
author: "nblankenau"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get sslCertificate

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Get the properties and relationships of an [sslCertificate](../resources/security-sslcertificate.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_sslcertificate_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-sslcertificate-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/sslCertificates/{sslCertificateId}
```

## Optional query parameters

This method supports the `$count`, `$select`, `$search`, `$orderBy`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.sslCertificate](../resources/security-sslcertificate.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_sslcertificate",
  "sampleKeys": ["ZmI5NjU1MTUwNWYxZWRiMjRkZDNiMzZmY2ZmZGI3NjU4MzNiODExOA=="]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/threatIntelligence/sslCertificates/ZmI5NjU1MTUwNWYxZWRiMjRkZDNiMzZmY2ZmZGI3NjU4MzNiODExOA==
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-sslcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-sslcertificate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-sslcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-sslcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-sslcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-sslcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-sslcertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-sslcertificate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.sslCertificate"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "ZmI5NjU1MTUwNWYxZWRiMjRkZDNiMzZmY2ZmZGI3NjU4MzNiODExOA==",
    "firstSeenDateTime": "2023-03-10T01:20:47.000Z",
    "lastSeenDateTime": "2023-04-02T00:00:00.000Z",
    "fingerprint": "fb:96:55:15:05:f1:ed:b2:4d:d3:b3:6f:cf:fd:b7:65:83:3b:81:18",
    "sslVersion": "3",
    "expirationDateTime": "2024-03-03T18:56:17.000Z",
    "issueDateTime": "2023-03-09T18:56:17.000Z",
    "sha1": "fb96551505f1edb24dd3b36fcffdb765833b8118",
    "serialNumber": "1137389559885717770175191329273386705719099773",
    "subject": {
      "commonName": "microsoft.com",
      "address": {
        "city": "Redmond",
        "countryOrRegion": "US",
        "postalCode": null,
        "postOfficeBox": null,
        "state": "WA",
        "street": null
      },
      "email": null,
      "givenName": null,
      "organizationName": "Microsoft Corporation",
      "organizationUnitName": null,
      "serialNumber": null,
      "surname": null,
      "alternateName": [
        "pymes.microsoft.com",
        "mac2.microsoft.com",
        "sponsors.microsoft.com",
        "oemcommunity.microsoft.com",
        "gigjam.microsoft.com",
        "businesscentral.microsoft.com"
      ]
    },
    "issuer": {
      "commonName": "Microsoft Azure TLS Issuing CA 05",
      "address": {
        "city": null,
        "countryOrRegion": "US",
        "postalCode": null,
        "postOfficeBox": null,
        "state": null,
        "street": null
      },
      "email": null,
      "givenName": null,
      "organizationName": "Microsoft Corporation",
      "organizationUnitName": null,
      "serialNumber": null,
      "surname": null,
      "alternateName": []
    }
  }
}
```
