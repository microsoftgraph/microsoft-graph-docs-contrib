---
title: "pkcs12CertificateInformation resource type"
description: "Represents the public information of a Pkcs12 client certificate."
author: "nickgmicrosoft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# pkcs12CertificateInformation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the public information of a Pkcs12 certificate.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isActive|Boolean|  Represents whether the certificate is the active certificate to be used for calling the API connector. The active certificate is the most recently uploaded certificate that isn't yet expired but whose notBefore time is in the past.|
|thumbprint|String| The certificate thumbprint. |
|notAfter|Integer| The certificate's expiry. This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)|
|notBefore|Integer| The certificate's issue time (not before). This value is a NumericDate as defined in RFC 7519 (A JSON numeric value representing the number of seconds from 1970-01-01T00:00:00Z UTC until the specified UTC date/time, ignoring leap seconds.)|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.pkcs12CertificateInformation"
}
-->

``` json
{
    "isActive": true,
    "thumbprint": "string",
    "notAfter": 0000000000,
    "notBefore": 0000000000,
}
```
