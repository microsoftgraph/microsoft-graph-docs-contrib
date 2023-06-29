---
title: "rateDrivenRolloutSettings resource type"
description: "Represents settings for governing rate driven rollouts."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# rateDrivenRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for governing rate driven rollouts. A rate driven rollout deploys content over time at a specific rate determined by **devicesPerOffer** and **durationBetweenOffers**.

Inherits from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|devicesPerOffer|Int32|Specifies the number of devices that are offered at the same time. When not set, all devices in the deployment are offered content at the same time.|
|durationBetweenOffers|Duration|The duration between each set of devices being offered the update, which has an effect when **devicesPerOffer** is defined. The value is represented in ISO 8601 format for duration. Default value is `P1D` (1 day). Inherited from [microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.rateDrivenRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
  "durationBetweenOffers": "String (duration)",
  "devicesPerOffer": "Int32"
}
```
