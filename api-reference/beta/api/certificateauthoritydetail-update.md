---
title: "Update certificateAuthorityDetail"
description: "Update the properties of a certificateAuthorityDetail object."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 11/26/2024
---

# Update certificateAuthorityDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificateauthoritydetail_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritydetail-update-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorityType|certificateAuthorityType|The type of certificate authority. The possible values are: `root`, `intermediate`, `unknownFutureValue`. |
|certificate|Binary|The type of certificate authority. Possible values are: `root`, `intermediate`.|
|displayName|String|The name of the certificate authority. |
|issuer|String|The issuer of the certificate authority. |
|issuerSubjectKeyIdentifier|String|The subject key identifier of certificate authority. |
|createdDateTime|DateTimeOffset|The date and time when the certificate authority was created. |
|expirationDateTime|DateTimeOffset|The date and time when the certificate authority expires. Required.|
|thumbprint|String|The thumbprint of certificate authority certificate. Required.|
|certificateRevocationListUrl|String|The URL to check if the certificate is revoked. |
|deltacertificateRevocationListUrl|String|The URL to check if the certificate is revoked. |
|isIssuerHintEnabled|Boolean|Indicates whether the certificate picker presents the certificate authority to the user to use for authentication. Default value is `false`. |



## Response

If successful, this method returns a `200 OK` response code and an updated [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_certificateauthoritydetail"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
Content-Type: application/json

{

   "isIssuerHintEnabled": true
   
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-certificateauthoritydetail-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-certificateauthoritydetail-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-certificateauthoritydetail-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-certificateauthoritydetail-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-certificateauthoritydetail-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-certificateauthoritydetail-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-certificateauthoritydetail-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateAuthorityDetail",
  "id": "90777c92-2eb3-4a68-931d-4a3e1e1c741f",
  "deletedDateTime": null,
  "certificateAuthorityType": "root",
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

