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

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|certificateAuthorityType|certificateAuthorityType|**TODO: Add Description**. The possible values are: `root`, `intermediate`, `unknownFutureValue`. Optional.|
|certificate|Binary|**TODO: Add Description** Required.|
|displayName|String|**TODO: Add Description** Optional.|
|issuer|String|**TODO: Add Description** Optional.|
|issuerSubjectKeyIdentifier|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|expirationDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|thumbprint|String|**TODO: Add Description** Required.|
|certificateRevocationListUrl|String|**TODO: Add Description** Optional.|
|deltacertificateRevocationListUrl|String|**TODO: Add Description** Optional.|
|isIssuerHintEnabled|Boolean|**TODO: Add Description** Optional.|



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
  "id": "2b422243-5eec-d46c-889d-5bce0d232072",
  "deletedDateTime": "String (timestamp)",
  "certificateAuthorityType": "String",
  "certificate": "Binary",
  "displayName": "String",
  "issuer": "String",
  "issuerSubjectKeyIdentifier": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "thumbprint": "String",
  "certificateRevocationListUrl": "String",
  "deltacertificateRevocationListUrl": "String",
  "isIssuerHintEnabled": "Boolean"
}
```

