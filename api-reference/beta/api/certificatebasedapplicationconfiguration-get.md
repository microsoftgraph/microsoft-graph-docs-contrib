---
title: "Get certificateBasedApplicationConfiguration"
description: "Read the properties and relationships of a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Get certificateBasedApplicationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificatebasedapplicationconfiguration_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedapplicationconfiguration-get-permissions.md)]

[!INCLUDE [app-cert-config-apis](../includes/rbac-for-apis/app-cert-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}
```

## Optional query parameters
This method supports `$select` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object in the response body.

## Examples

### Example 1: Get a single chain of trust from the certificateBasedApplicationConfiguration collection

The following example shows how to get a single chain of trust from the **certificateBasedApplicationConfigurations** collection.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_certificatebasedapplicationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-certificatebasedapplicationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-certificatebasedapplicationconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-certificatebasedapplicationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-certificatebasedapplicationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-certificatebasedapplicationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-certificatebasedapplicationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-certificatebasedapplicationconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-certificatebasedapplicationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateBasedApplicationConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/certificateAuthorities/certificateBasedApplicationConfigurations/$entity",
    "id": "0a6a9b97-b84c-406a-a703-14d699d1fbb1",
    "deletedDateTime": null,
    "displayName": "Tenant Trusted Certificate Chain of Trust for Application Configuration",
    "description": "The Trusted Certificate Chain of Trust containing a certificate chain used by app policy, to only allow application certificates from this issuer."
}
```

### Example 2: Get the trustedCertificateAuthorities with in single chain of trust

The following example shows how to get the **trustedCertificateAuthorities** within a single chain of trust in the **certificateBasedApplicationConfigurations** collection.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_certificatebasedapplicationconfiguration_expand_trustedcertificateauthorities"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/certificateBasedApplicationConfigurations/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1?$expand=trustedCertificateAuthorities
```


#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateBasedApplicationConfiguration"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
      {
        "id": "eec5ba11-2fc0-4113-83a2-ed986ed13743",
        "displayName": "Tenant Trusted Certificate Chain of Trust for Application Configuration",
        "description": "The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.",
        "trustedCertificateAuthorities": [
          {
            "id": "54a5974a-7cb0-432c-b10c-aff55fe62825",
            "isRootAuthority": false,
            "certificate": "MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB",
            "issuer": "DigiCert Cloud Services CA-1",
            "issuerSubjectkeyIdentifier": "SKI"
          },
          {
            "id": "cb459f03-fd88-4b45-a79b-b8593c6ebe81",
            "isRootAuthority": true,
            "certificate": "MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ",
            "issuer": "Digicert Inc",
            "issuerSubjectkeyIdentifier": "SKI"
          }
        ]
      }
  ]
}
```
