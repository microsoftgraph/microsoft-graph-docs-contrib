---
title: "userCloudCommunication resource type"
description: "Represents information about the interaction from communications and user"
author: "garchiro7"
ms.date: 03/11/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# userCloudCommunication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get callSettings](../resources/callsettings.md)|[callSettings](../resources/callsettings.md) collection|*Contains information about a call settings entity.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**User ID** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|callSettings|[callSettings](../resources/callsettings.md)|**Call Settings assigned to the user**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userCloudCommunication",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userCloudCommunication",
  "id": "String (identifier)"
}
```

