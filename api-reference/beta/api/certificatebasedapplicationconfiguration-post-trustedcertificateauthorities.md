---
title: "Create trustedCertificateAuthority"
description: "Create a new trusted certificate authority in a certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create trustedCertificateAuthority
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new trusted certificate authority in a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

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
POST /directory/certificateAuthorities/certificateBasedApplicationConfigurations/{certificateBasedApplicationConfigurationId}/trustedCertificateAuthorities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
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
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_certificateauthorityasentity_from_"
}
-->

``` http
POST directory/certificateAuthorities/certificateBasedApplicationConfigurations/0a6a9b97-b84c-406a-a703-14d699d1fbb1/trustedCertificateAuthorities
Content-Type: application/json

{
  "isRootAuthority": true,
  "certificate": "MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....",
  "issuer": "ExampleIssuer",
  "issuerSubjectKeyIdentifier": " BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9"
}
```


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
