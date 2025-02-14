---
title: "delegationSettings resource type"
description: "Represents the settings for a delegate and delegator."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# delegationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the properties for a [delagator or delegate](../resources/callsettings.md).

Inherits from [entity](../resources/entity.md).

This resource is an open type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of the delegationSettings objects and their properties.|
|[Get](../api/delegationsettings-get.md)|[delegationSettings](../resources/delegationsettings.md)|Read the properties and relationships of a delegationSettings object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedActions|[delegateAllowedActions](../resources/delegateallowedactions.md)|Represent the allowed actions by the delegator/delegate.|
|createdDateTime|DateTimeOffset|Timestamp when the delegator/delegate entry was created.|
|id|String|Unique identifier of the delegator/delegate. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|isActive|Boolean|Indicates if the delegator/delegate relationship is currently active.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegationSettings",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegationSettings",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "isActive": "Boolean",
  "allowedActions": {
    "@odata.type": "microsoft.graph.delegateAllowedActions"
  }
}
```
