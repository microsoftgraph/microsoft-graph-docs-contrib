---
title: "actionStep resource type"
description: "Represents a single action to take toward completing a recommendation."
author: "ddeeps2610"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# actionStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single action to take toward completing a [recommendation](../resources/recommendation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|[actionUrl](../resources/actionurl.md)|A link to the documentation or Microsoft Entra admin center page that is associated with the action step.|
|stepNumber|Int64|Indicates the position for this action in the order of the collection of actions to be taken.|
|text|String|Friendly description of the action to take.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionStep"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionStep",
  "stepNumber": "Integer",
  "text": "String",
  "actionUrl": {
    "@odata.type": "microsoft.graph.actionUrl"
  }
}
```

