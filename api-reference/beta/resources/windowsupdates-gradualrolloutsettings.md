---
title: "gradualRolloutSettings resource type"
description: "Represents settings for governing how to rollout content to devices."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# gradualRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for governing how to rollout content to devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBetweenOffers|Duration|The duration between each set of devices being offered the update. The value is represented in ISO 8601 format for duration. Default value is `P1D` (1 day).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.gradualRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.gradualRolloutSettings",
  "durationBetweenOffers": "String (duration)"
}
```
