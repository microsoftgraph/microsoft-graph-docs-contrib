---
title: "teamworkActivePeripherals resource type"
description: "Represents active peripherals attached to a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkActivePeripherals resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents active peripherals attached to a device.


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|communicationSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked communication speaker details.|
|contentCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked content camera details.|
|microphone|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked microphone details.|
|roomCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked room camera details.|
|speaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Linked speaker details.|

## JSON representation
The following is a JSON representation of the resource.
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

