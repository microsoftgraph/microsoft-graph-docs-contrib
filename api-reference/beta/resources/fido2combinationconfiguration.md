---
title: "fido2CombinationConfiguration resource type"
description: "**TODO: Add Description**"
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# fido2CombinationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An entity used to specify which specific FIDO2 key classes may be used to satisfy a linked combination in an authentication strength.

Inherits from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List fido2CombinationConfiguration](../api/fido2combinationconfiguration-list.md)|[fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md) collection|Get a list of the [fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md) objects and their properties.|
|[Get fido2CombinationConfiguration](../api/fido2combinationconfiguration-get.md)|[fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md)|Read the properties and relationships of a [fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md) object.|
|[Update fido2CombinationConfiguration](../api/fido2combinationconfiguration-update.md)|[fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md)|Update the properties of a [fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md) object.|
|[Delete fido2CombinationConfiguration](../api/fido2combinationconfiguration-delete.md)|None|Deletes a [fido2CombinationConfiguration](../resources/fido2combinationconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAAGUIDs|String collection|A list of Authenticator Attestation GUIDs (AAGUIDs) that are allowed to be used in linked authentication method combinations.|
|appliesToCombinations|authenticationMethodModes collection|Which authentication method combinations this configuration applies to. Inherited from [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md).|
|id|String|A unique system-generated GUID. Inherited from [entity](../resources/entity.md).|

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

