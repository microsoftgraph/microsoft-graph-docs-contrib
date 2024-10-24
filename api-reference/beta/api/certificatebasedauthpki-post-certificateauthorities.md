---
title: "Create certificateAuthorityDetail"
description: "Create a new certificateAuthorityDetail object."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create certificateAuthorityDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificatebasedauthpki-post-certificateauthorities-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificatebasedauthpki-post-certificateauthorities-permissions.md)]

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
|deletedDateTime|DateTimeOffset|The date time when the object was soft deleted. `null` for objects that are not deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|certificateAuthorityType|certificateAuthorityType|The type of certificate authority. The possible values are: `root`, `intermediate`, and `unknownFutureValue`. Optional.|
|certificate|Binary|The public key of the certificate authority. Required.|
|displayName|String|The display name of the certificate authority. Optional.|
|issuer|String| The issuer of the certificate authority. Optional.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of certificate authority. Optional.|
|createdDateTime|DateTimeOffset|The date and time when the certificate authority was created. Optional.|
|expirationDateTime|DateTimeOffset|The date and time when the certificate authority expires. Required.|
|thumbprint|String|The thumbprint of certificate authority certificate. Required.|
|certificateRevocationListUrl|String| The URL to check if the certificate is revoked. Optional.|
|deltacertificateRevocationListUrl|String|The URL to check if the certificate is revoked. Optional.|
|isIssuerHintEnabled|Boolean|Indicates whether the certificate picker presents the certificate authority to the user to use for authentication. Default value is `false`. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_certificateauthoritydetail_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.certificateAuthorityDetail",
  "deletedDateTime": "String (timestamp)",
  "certificateAuthorityType": "String",
  "certificate": "Binary",
  "displayName": "String",
  "issuer": "String",
  "issuerSubjectKeyIdentifier": "String",
  "expirationDateTime": "String (timestamp)",
  "thumbprint": "String",
  "certificateRevocationListUrl": "String",
  "deltacertificateRevocationListUrl": "String",
  "isIssuerHintEnabled": "Boolean"
}
```


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
  "certificateAuthorityType": "root",
  "certificate": "Binary",
  "displayName": "Contoso2 CA1",
  "issuer": "Contoso2",
  "issuerSubjectKeyIdentifier": "String",
  "createdDateTime": null,
  "expirationDateTime": "2027-08-29T02:05:57Z",
  "thumbprint": "String",
  "certificateRevocationListUrl": null,
  "deltacertificateRevocationListUrl": null,
  "isIssuerHintEnabled": true
}
```

