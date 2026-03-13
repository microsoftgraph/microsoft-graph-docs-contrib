---
title: "gradualRolloutSettings resource type"
description: "Represents settings for governing how to rollout content to devices."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# gradualRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for governing how to rollout content to devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBetweenOffers|Duration|The duration between each set of devices being offered the update. The value is represented in ISO 8601 format for duration. Default value is `P1D` (one day).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
