---
title: "durationDrivenRolloutSettings resource type"
description: "Represents settings for controlling how to roll out over a specific duration."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 08/31/2024
---

# durationDrivenRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for controlling how to roll out over a specific duration.

Inherits from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|durationBetweenOffers|String|The duration between each set of devices being offered the update, which has an effect when **durationUntilDeploymentEnd** is defined. The value is represented in ISO 8601 format for duration. Default value is `P1D` (one day). Inherited from [microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).|
|durationUntilDeploymentEnd|Duration|The target duration of the rollout. Given **durationBetweenOffers** and **durationUntilDeploymentEnd**, the system will automatically calculate how many devices are in each offering.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
