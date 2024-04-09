---
title: "x509CertificateCombinationConfiguration resource type"
description: "Configuration to require a specific certificate in an authentication strength policy."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---


# x509CertificateCombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration to require specific certificate properties. You can use this entity to specify the certificate issuer or policy OID that are allowed, as part of certificate-based authentication, in an [authentication strength policy](authenticationstrengthpolicy.md).

Inherits from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedIssuerSkis|String collection|A list of allowed subject key identifier values.|
|allowedPolicyOIDs|String collection|A list of allowed policy OIDs.|
|appliesToCombinations|authenticationMethodModes collection| Which authentication method combinations this configuration applies to. The possible values for x509certificatecombinationconfiguration are `"x509CertificateSingleFactor"` or `"x509CertificateMultiFactor"`. Inherited from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).|
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