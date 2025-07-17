---
title: "teamworkActivePeripherals resource type"
description: "Represents the details about the active peripheral devices attached to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkActivePeripherals resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the active peripheral devices attached to a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|communicationSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked communication speaker details.|
|contentCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked content camera details.|
|microphone|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked microphone details.|
|roomCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked room camera details.|
|speaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked speaker details.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkActivePeripherals"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkActivePeripherals"
}
```

