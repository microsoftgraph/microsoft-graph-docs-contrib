---
title: "trustedCertificateAuthorityBase resource type"
description: "This is an abstract type that represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for Authentication."
author: "atastrophic"
ms.localizationpriority: medium
ms.date: 11/24/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# trustedCertificateAuthorityBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for Authentication.

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|`certificateAuthorities`|[certificateAuthority](../resources/certificateauthority.md) collection | Multi-value property representing a list of trusted certificate authorities.|
|deletedDateTime|DateTimeOffset|Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustedCertificateAuthorityBase",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustedCertificateAuthorityBase",
  "id": "uniquestringidentifier",
  "certificateAuthorities": [
    {
      "isRootAuthority": true,
      "certificateRevocationListUrl": "http://contoso.com/root.crl",
      "deltaCertificateRevocationListUrl": null,
      "certificate": "joGrWL+Yqkik/CABWG0d1w....",
      "issuer": "CN=certauthority.com, OU=IoT Org, O=Microsoft Corporation, L=Redmond, S=WA, C=US",
      "issuerSki": "74B99F09035C525B1B4A0FE1C9ACA70218C65B71"
    }
  ]
}
```
