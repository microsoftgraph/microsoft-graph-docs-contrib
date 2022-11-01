---
title: "durationDrivenRolloutSettings resource type"
description: "Settings controlling how to rollout over a specific duration."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# durationDrivenRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling how to rollout over a specific duration.


Inherits from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBetweenOffers|String|Specifies duration between each set of devices being offered the update. Has an effect when **durationUntilDeploymentEnd** is defined. Default value is `P1D` (1 day).|
|durationUntilDeploymentEnd|Duration|Specifies the target duration of the rollout. Given **durationBetweenOffers** and **durationUntilDeploymentEnd** the system will automatically calculate how many devices are in each offering.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.durationDrivenRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.durationDrivenRolloutSettings",
  "durationBetweenOffers": "String (duration)",
  "durationUntilDeploymentEnd": "String (duration)"
}
```

