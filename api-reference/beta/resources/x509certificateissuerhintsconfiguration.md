---
title: "x509CertificateIssuerHintsConfiguration resource type"
description: "Determines the subject names of all the trust certificate authorities in the trust store to be sent back as hints to the client side to filter the certificates shown in certificate picker."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# x509CertificateIssuerHintsConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Determines whether issuer(CA) hints are sent back to the client side to filter the certificates shown in certificate picker.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|state|x509CertificateIssuerHintsState|The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateIssuerHintsConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateIssuerHintsConfiguration",
  "state": "String"
}
```

