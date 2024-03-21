---
title: "x509CertificateRule resource type"
description: "Defines the strong authentication configuration rules for the X.509 certificate."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# x509CertificateRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the strong authentication configuration rules for the X.509 certificate. Rules are configured in addition to the authentication mode.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifier|String| The identifier of the X.509 certificate. Required.|
|issuerSubjectIdentifier|String| The identifier of the certificate issuer. |
|policyOidIdentifier|String| The identifier of the X.509 certificate policyOID. |
|x509CertificateAuthenticationMode|x509CertificateAuthenticationMode| The type of strong authentication mode. The possible values are: `x509CertificateSingleFactor`, `x509CertificateMultiFactor`, `unknownFutureValue`. Required.|
|x509CertificateRequiredAffinityLevel|x509CertificateAffinityLevel| The possible values are: `low`, `high`, `unknownFutureValue`.|
|x509CertificateRuleType|x509CertificateRuleType| The type of the X.509 certificate mode configuration rule. The possible values are: `issuerSubject`, `policyOID`, `unknownFutureValue`, `issuerSubjectAndPolicyOID`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `issuerSubjectAndPolicyOID`. Required.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.x509CertificateRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateRule",
  "identifier": "String",
  "issuerSubjectIdentifier": "String",
  "policyOidIdentifier": "String",
  "x509CertificateAuthenticationMode": "String",
  "x509CertificateRequiredAffinityLevel": "String",
  "x509CertificateRuleType": "String"
}
```

