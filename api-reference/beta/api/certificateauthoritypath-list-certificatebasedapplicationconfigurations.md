---
title: "List certificateBasedApplicationConfigurations"
description: "Get a list of certificateBasedApplicationConfiguration objects."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List certificateBasedApplicationConfigurations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) objects.

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
GET /directory/certificateAuthorities/certificateBasedApplicationConfigurations
```

## Optional query parameters
This method supports `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_certificatebasedapplicationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/certificateAuthorities/certificateBasedApplicationConfigurations
```

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.certificateBasedApplicationConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
      {
        "@odata.type": "#microsoft.graph.certificateBasedApplicationConfiguration",
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
