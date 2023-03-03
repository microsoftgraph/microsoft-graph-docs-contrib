---
title: "fido2CombinationConfiguration resource type"
description: "Configuration to require specific FIDO2 key types in an authentication strength"
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# fido2CombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Configuration to require specific FIDO2 key types in an authentication strength. An administrator may use this entity to specify which Authenticator Attesttation GUIDs (AAGUIDs) are allowed to be used, as part of certain authentication method combinations, in an [authentication strength](authenticationstrengthpolicy.md).


Inherits and derived from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAAGUIDs|String collection|A list of AAGUIDs allowed to be used as part of the specified authentication method combinations.|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to. The only possible value for fido2combinationConfigurations is `"fido2"`. Inherited from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).|
|id|String|A system-generated identifier. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fido2CombinationConfiguration",
  "baseType": "microsoft.graph.authenticationCombinationConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fido2CombinationConfiguration",
  "id": "String (identifier)",
  "appliesToCombinations": [
    "String"
  ],
  "allowedAAGUIDs": [
    "String"
  ]
}
```

