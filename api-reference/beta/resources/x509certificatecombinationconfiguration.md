---
title: "x509CertificateCombinationConfiguration resource type"
description: "Configuration to require a specific certificate in an authentication strength"
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---


# x509CertificateCombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configure to require a specific certificate in an authentication strength. An administrator may user this entity to specify which certificate issuer or policy OID are allowed when users perform certificate-based authentication (CBA), as part of certain authentication method combinations, in an [authentication strength](authenticationstrengthpolicy.md) policy.

Inherits from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedIssuerSkis|String collection|A list of allowed SubjectkeyIdentifier.|
|allowedPolicyOIDs|String collection|A list of allowed policy OIDs.|
|appliesToCombinations|authenticationMethodModes collection| Which authentication method combinations this configuration applies to. The possible value for x509certificatecombinationconfiguration are `"x509CertificateSingleFactor"` or `"x509CertificateMultiFactor"`.|
|id|String|A system-generated identifier. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.x509CertificateCombinationConfiguration",
  "baseType": "microsoft.graph.authenticationCombinationConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateCombinationConfiguration",
  "id": "String (identifier)",
  "appliesToCombinations": [
    "String"
  ],
  "allowedIssuerSkis": [
    "String"
  ],
  "allowedPolicyOIDs": [
    "String"
  ]
}
```