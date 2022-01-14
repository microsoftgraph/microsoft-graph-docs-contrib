---
title: "x509CertificateRule resource type"
description: "A complex type that defines the X.509 certificate strong authentication configuration rules. Rules are configured in addition to the authentication mode. Configure authentication rule to bind a specific Issuer Subject or Policy OID to one particular authentication mode, i.e., Binds Policy OID "1.32.132.343" to "Multi-factor" Authentication."
author: "Vimala"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type that defines the X.509 certificate strong authentication configuration rules. Rules are configured in addition to the authentication mode. Configure authentication rule to bind a specific Issuer Subject or Policy OID to one particular authentication mode, i.e., Binds Policy OID "1.32.132.343" to "Multi-factor" Authentication.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifier|String|The identifier of the X.509 certificate.|
|x509CertificateAuthenticationMode|x509CertificateAuthenticationMode|The type of strong authentication mode, possible values are: `x509CertificateSingleFactor` and `x509CertificateMultiFactor`.|
|x509CertificateRuleType|x509CertificateRuleType|The type of the X.509 certificate mode configuration rule,  possible values are: `issuerSubject` and `policyOID`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateRule",
  "x509CertificateRuleType": "String",
  "identifier": "String",
  "x509CertificateAuthenticationMode": "String"
}
```

