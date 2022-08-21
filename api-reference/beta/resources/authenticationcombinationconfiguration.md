---
title: "authenticationCombinationConfiguration resource type"
description: "An abstract configuration for a given auth method applied to certain combinations. "
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationCombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When extended, sets restrictions on specific types, modes, versions, etc. of an authentication method that is tied to specific auth method combinations. This is an abstract type.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationCombinationConfigurations](../api/authenticationstrengthpolicy-list-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) collection|Get a list of the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects and their properties.|
|[Create authenticationCombinationConfiguration](../api/authenticationstrengthpolicy-post-combinationconfigurations.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Create a new [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Get authenticationCombinationConfiguration](../api/authenticationcombinationconfiguration-get.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Read the properties and relationships of an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Update authenticationCombinationConfiguration](../api/authenticationcombinationconfiguration-update.md)|[authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)|Update the properties of an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|
|[Delete authenticationCombinationConfiguration](../api/authenticationstrengthpolicy-delete-combinationconfigurations.md)|None|Deletes an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to.|
|id|String|A unique system-generated GUID. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

