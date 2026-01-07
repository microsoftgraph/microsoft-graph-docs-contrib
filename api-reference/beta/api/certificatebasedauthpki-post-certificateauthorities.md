---
title: "Create certificateAuthorityDetail"
description: "Create a new certificateAuthorityDetail object."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 11/26/2024
---

# Create certificateAuthorityDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificatebasedauthpki_post_certificateauthorities" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-post-certificateauthorities-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

You can specify the following properties when creating a **certificateAuthorityDetail**.

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorityType|certificateAuthorityType|The type of certificate authority. The possible values are: `root`, `intermediate`, and `unknownFutureValue`. Optional. Supports `$filter` (`eq`).|
|certificate|Binary|The public key of the certificate authority. Required.|
|displayName|String|The display name of the certificate authority. Optional.|
|issuer|String| The issuer of the certificate authority. Optional.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of certificate authority. Optional.|
|expirationDateTime|DateTimeOffset|The date and time when the certificate authority expires. Required. Supports `$filter` (`eq`) and `$orderby`.|
|thumbprint|String|The thumbprint of certificate authority certificate. Required. Supports `$filter` (`eq`, `startswith`).|
|certificateRevocationListUrl|String| The URL to check if the certificate is revoked. Optional.|
|deltacertificateRevocationListUrl|String|The list of certificates that have been revoked since the last Certificate Revocation List (CRL) or Delta CRL was published, depending on which is most recent. Optional.|
|isIssuerHintEnabled|Boolean|Indicates whether the certificate picker presents the certificate authority to the user to use for authentication. Default value is `false`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_certificateauthoritydetail_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities
Content-Type: application/json

{
 
  "certificateAuthorityType": "intermediate",
 
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-certificateauthoritydetail-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-certificateauthoritydetail-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-certificateauthoritydetail-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-certificateauthoritydetail-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-certificateauthoritydetail-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-certificateauthoritydetail-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-certificateauthoritydetail-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.certificateAuthorityDetail"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateAuthorityDetail",
  "id": "90777c92-2eb3-4a68-931d-4a3e1e1c741f",
  "deletedDateTime": null,
  "certificateAuthorityType": "intermediate",
  "certificate": "Binary",
  "displayName": "Contoso2 CA1",
  "issuer": "Contoso2",
  "issuerSubjectKeyIdentifier": "C0E9....711A",
  "createdDateTime": "2024-10-25T18:05:28Z",
  "expirationDateTime": "2027-08-29T02:05:57Z",
  "thumbprint": "C6FA....4E9CF2",
  "certificateRevocationListUrl": null,
  "deltacertificateRevocationListUrl": null,
  "isIssuerHintEnabled": true
}
```

