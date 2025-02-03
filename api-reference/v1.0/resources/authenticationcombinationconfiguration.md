---
title: "authenticationCombinationConfiguration resource type"
description: "An abstract configuration for a given auth method applied to certain combinations. "
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationCombinationConfiguration resource type

Namespace: microsoft.graph

Sets restrictions on specific types, modes, or versions of an authentication method that is tied to specific auth method combinations used in an [authentication strength](authenticationstrengths-overview.md).

The following resources inherit from this abstract type and define the various types of combination configurations:
* [fido2combinationConfigurations](fido2combinationconfiguration.md) 
* [x509certificatecombinationconfiguration](x509certificatecombinationconfiguration.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/authenticationstrengthpolicy-list-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) collection|Get a list of the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects and their properties.|
|[Create](../api/authenticationstrengthpolicy-post-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)| Create a new [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) |
|[Get](../api/authenticationcombinationconfiguration-get.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Read the properties and relationships of a [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Update](../api/authenticationcombinationconfiguration-update.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Update the properties of an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Delete](../api/authenticationstrengthpolicy-delete-combinationconfigurations.md)|None|Delete an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Update allowed combinations](../api/authenticationstrengthpolicy-updateallowedcombinations.md) |[updateAllowedCombinationsResult](../resources/updateallowedcombinationsresult.md)|Update the allowed [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) for a given [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to. Must be an **allowedCombinations** object, part of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md). The only possible value for `fido2combinationConfigurations` is `"fido2"`.|
|id|String|A unique system-generated identifier.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationCombinationConfiguration",
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
