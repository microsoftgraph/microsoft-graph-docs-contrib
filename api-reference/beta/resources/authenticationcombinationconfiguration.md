---
title: "authenticationCombinationConfiguration resource type"
description: "An abstract configuration for a given auth method applied to certain combinations. "
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# authenticationCombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Sets restrictions on specific types, modes, or versions of an authentication method that is tied to specific auth method combinations used in an [authentication strength](authenticationstrengths-overview.md). The following resources inherit from this abstract and define the various types of combination configurations:
* [fido2combinationConfigurations](fido2combinationconfiguration.md) 
* [x509certificatecombinationconfiguration](x509certificatecombinationconfiguration.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationstrengthpolicy-list-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) collection|Get a list of the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects and their properties.|
|[Create](../api/authenticationstrengthpolicy-post-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)| Create a new [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) |
|[Get](../api/authenticationcombinationconfiguration-get.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Read the properties and relationships of a [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Update](../api/authenticationcombinationconfiguration-update.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Update the properties of an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Delete](../api/authenticationstrengthpolicy-delete-combinationconfigurations.md)|None|Delete an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) obejct.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to. Must be an **allowedCombinations** object defined for the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md). For **fido2combinationConfigurations** use `"fido2"`, for **x509certificatecombinationconfiguration** use `"x509CertificateSingleFactor"` or `"x509CertificateMultiFactor"`.
|id|String|A unique system-generated identifier. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationCombinationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationCombinationConfiguration",
  "id": "String (identifier)",
  "appliesToCombinations": [
    "String"
  ]
}
```

