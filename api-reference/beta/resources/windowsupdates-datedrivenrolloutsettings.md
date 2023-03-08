---
title: "dateDrivenRolloutSettings resource type"
description: "Represents settings for controlling how to rollout by a specific end date."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# dateDrivenRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for controlling how to rollout by a specific end date.

Inherits from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBetweenOffers|Duration|The duration between each set of devices being offered the update, which has an effect when the **endDateTime** is defined. The value is represented in ISO 8601 format for duration. Default value is `P1D` (1 day). Inherited from [microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).|
|endDateTime|DateTimeOffset|Specifies the date before which all devices currently in the deployment are offered the update. Devices added after this date are offered immediately. When the **endDateTime** is not set, all devices in the deployment are offered content at the same time.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.dateDrivenRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings",
  "durationBetweenOffers": "String (duration)",
  "endDateTime": "String (timestamp)"
}
```
