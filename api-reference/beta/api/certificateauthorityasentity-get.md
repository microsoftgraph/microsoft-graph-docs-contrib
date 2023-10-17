---
title: "Get certificateAuthorityAsEntity"
description: "Read the properties and relationships of a certificateAuthorityAsEntity object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get certificateAuthorityAsEntity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|AppCertTrustConfiguration.Read.All, AppCertTrustConfiguration.ReadWrite.All|

[!INCLUDE [app-cert-config-apis](../includes/rbac-for-apis/app-cert-config-apis.md)]
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}/trustedCertificateAuthorities/{trustedCertificateAuthorityId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_certificateauthorityasentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/certificateBasedApplicationConfigurations/15420ad7-8823-40d2-9462-8538a83b09c5/trustedCertificateAuthorities/cc96a85f-bf0e-442a-9b2b-4b4e769db5c0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-certificateauthorityasentity-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-certificateauthorityasentity-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-certificateauthorityasentity-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-certificateauthorityasentity-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-certificateauthorityasentity-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-certificateauthorityasentity-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-certificateauthorityasentity-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-certificateauthorityasentity-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateAuthorityAsEntity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/{version}/$metadata#certificateBasedApplicationConfigurations({id})/trustedCertificateAuthorities/$entity",
  "@odata.id": "https://graph.microsoft.com/v2/.../trustedCertificateAuthorities/54a5974a-7cb0-432c-b10c-aff55fe62825",
  "id": "54a5974a-7cb0-432c-b10c-aff55fe62825",
  "isRootAuthority": false,
  "certificate": "MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB",
  "issuer": "DigiCert Cloud Services CA-1",
  "issuerSubjectkeyIdentifier": "SKI"
}
```
