---
title: "Create trustedCertificateAuthority"
description: "Create a new trusted certificate authority in a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 05/22/2024
---

# Create trustedCertificateAuthority
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new trusted certificate authority in a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificatebasedapplicationconfiguration_post_trustedcertificateauthorities" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedapplicationconfiguration-post-trustedcertificateauthorities-permissions.md)]

[!INCLUDE [rbac-trusted-app-cert-config-apis](../includes/rbac-for-apis/rbac-trusted-app-cert-config-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}/trustedCertificateAuthorities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.

You can specify the following properties when you create a **certificateAuthorityAsEntity**.

> **Note:** A maximum of 10 trusted authorities are allowed per **trustedCertificateAuthorities** collection.

|Property|Type|Description|
|:---|:---|:---|
|certificate|Binary|The trusted certificate. Required.|
|isRootAuthority|Boolean|Indicates if the certificate is a root authority. Required. Only one object in a **trustedCertificateAuthorities** collection can be the root authority.|
|issuer|String|The issuer of the trusted certificate. Required.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of the trusted certificate. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_certificateauthorityasentity_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1/trustedCertificateAuthorities
Content-Type: application/json

{
  "isRootAuthority": true,
  "certificate": "MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....",
  "issuer": "ExampleIssuer",
  "issuerSubjectKeyIdentifier": " BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-certificateauthorityasentity-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-certificateauthorityasentity-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-certificateauthorityasentity-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-certificateauthorityasentity-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-certificateauthorityasentity-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-certificateauthorityasentity-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-certificateauthorityasentity-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-certificateauthorityasentity-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateAuthorityAsEntity"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateAuthorityAsEntity",
  "certificate": "MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB",
  "id": "b505a013-aebd-2dea-e9ec-a506fbde61d3",
  "issuer": "ExampleIssuer",
  "issuerSubjectKeyIdentifier": "BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9",
  "isRootAuthority": true
}
```
