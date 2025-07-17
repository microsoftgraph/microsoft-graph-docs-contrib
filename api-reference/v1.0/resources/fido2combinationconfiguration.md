---
title: "fido2CombinationConfiguration resource type"
description: "Configuration to require specific FIDO2 keys in an authentication strength"
ms.localizationpriority: medium
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/18/2024
---

# fido2CombinationConfiguration resource type

Namespace: microsoft.graph

Configuration to require specific FIDO2 keys in an authentication strength. Use this entity to specify which Authenticator Attestation GUIDs (AAGUIDs) are allowed, as part of certain authentication method combinations, in an [authentication strength](authenticationstrengthpolicy.md).

Inherits and derived from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAAGUIDs|String collection|A list of AAGUIDs allowed to be used as part of the specified authentication method combinations.|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to. The only possible value is `"fido2"`. Inherited from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).|
|id|String|A system-generated identifier. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

