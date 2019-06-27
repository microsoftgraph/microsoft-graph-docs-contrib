---
title: "certificateAuthority resource type"
description: "Represents a certificate authority."
localization_priority: Normal
author: "eketo-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# certificateAuthority resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a certificate authority.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificate|Binary|The base64 encoded string representing the certificate.|
|certificateRevocationListUrl|String|The URL of the certificate revocation list.|
|deltaCertificateRevocationListUrl|String|The URL of the delta certificate revocation list.|
|isRootAuthority|Boolean|**True** if the trusted certificate is a root authority, **false** if the trusted certificate is an intermediate authority.|
|issuer|String|The issuer of the trusted certificate.|
|issuerSki|String|The subject key identifier of the trusted certificate.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificateAuthority",
  "baseType": null
}-->

```json
{
  "certificate": "Binary",
  "certificateRevocationListUrl": "String",
  "deltaCertificateRevocationListUrl": "String",
  "isRootAuthority": true,
  "issuer": "String",
  "issuerSki": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "certificateAuthority resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->