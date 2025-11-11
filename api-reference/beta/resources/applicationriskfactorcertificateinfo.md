---
title: "applicationRiskFactorCertificateInfo resource type"
description: "SSL/TLS certificate validation and security assessment details."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactorCertificateInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides SSL/TLS certificate validation and risk assessment details for an [application](../resources/applicationtemplate.md), highlighting potential security misconfigurations or trust issues.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|hasBadCommonName|Boolean|Indicates whether the certificate's common name doesn't match the expected domain name.|
|hasInsecureSignature|Boolean|Indicates whether the certificate uses a weak or insecure signature algorithm (for example, MD5 or SHA-1).|
|hasNoChainOfTrust|Boolean|Indicates whether the certificate chain of trust is incomplete or invalid.|
|isDenylisted|Boolean|Indicates whether the certificate is on a known denylist or associated with compromised issuers.|
|isHostnameMismatch|Boolean|Indicates whether the certificate's hostname doesn't match the domain it was issued for.|
|isNotAfter|Boolean|Indicates whether the certificate is expired and no longer valid.|
|isNotBefore|Boolean|Indicates whether the certificate isn't yet valid based on its activation date.|
|isRevoked|Boolean|Indicates whether the issuing certificate authority revoked the certificate.|
|isSelfSigned|Boolean|Indicates whether the certificate is self-signed rather than issued by a trusted certificate authority.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactorCertificateInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactorCertificateInfo",
  "hasBadCommonName": "Boolean",
  "isHostnameMismatch": "Boolean",
  "hasInsecureSignature": "Boolean",
  "isDenylisted": "Boolean",
  "isRevoked": "Boolean",
  "hasNoChainOfTrust": "Boolean",
  "isNotAfter": "Boolean",
  "isNotBefore": "Boolean",
  "isSelfSigned": "Boolean"
}
```

