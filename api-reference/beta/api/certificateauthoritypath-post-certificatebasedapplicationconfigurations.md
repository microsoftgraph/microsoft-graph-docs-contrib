---
title: "Create certificateBasedApplicationConfiguration"
description: "Create a new certificateBasedApplicationConfiguration object."
author: "madansr7"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create certificateBasedApplicationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [certificateBasedApplicationConfiguration ](../resources/certificatebasedapplicationconfiguration.md) object.

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
POST /directory/certificateAuthorities/certificateBasedApplicationConfigurations
```



## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.

> **Note:** A maximum of 100 certificate-based application configuration objects are allowed per tenant. This includes any deleted or active objects.

You can specify the following properties when you create a **certificateBasedApplicationConfiguration**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description for the configuration. Optional.|
|displayName|String|The friendly name for the configuration. Optional.|
|trustedCertificateAuthorities	|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md)|Multi-value property that represents a list of trusted certificate authorities. At least one trusted certificate authority must be provided when you create a certificate-based application configuration.  |


## Response

If successful, this method returns a `200 OK` response code and a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_certificatebasedapplicationconfiguration"
}
-->
``` http
POST https://graph.microsoft.com/beta/certificateAuthorityPath/certificateBasedApplicationConfigurations
Content-Type: application/json

{
  "displayName": "Tenant Trusted Certificate Chain of Trust for Application Configuration",
  "description": "The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.",
  "trustedCertificateAuthorities ": [
    {
      "isRootAuthority": true,
      "certificate": "MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ"
    }
  ]
}
```

### Response
The following is an example of the response.
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
  "value": {
    "@odata.type": "#microsoft.graph.certificateBasedApplicationConfiguration",
    "id": "d5b0af1c-9376-6b66-16b6-e402965862c1",
    "deletedDateTime": "String (timestamp)",
    "displayName": "Tenant Trusted Certificate Chain of Trust for Application Configuration",
    "description": "The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.",
    "trustedCertificateAuthorities ": [
      {
        "isRootAuthority": true,
        "certificate": "MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ"
      }
    ]
  }
}
```
