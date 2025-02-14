---
title: "Call settings resource type"
description: "Contains information about a call settings resource."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 02/01/2025
---


# callSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the available call settings.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/callsettings-list.md)|[callSettings](../resources/callsettings.md) collection|Get a list of the callSettings objects and their properties.|
|[Get](../api/callsettings-get.md)|[callSettings](../resources/callsettings.md)|Read the properties and relationships of a callSettings object.|
|[List delegates](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Retrieve all delegates for a user  |
|[List delegators](../api/callsettings-list-delegators.md)|[delegationSettings](../resources/delegationsettings.md) collection|Retrieve all delegators for a user|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|delegates|[delegationSettings](../resources/delegationsettings.md) collection|Represents the delegate settings.|
|delegators|[delegationSettings](../resources/delegationsettings.md) collection|Represents the delegator settings.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callSettings",
  "id": "String (identifier)"
}
```

