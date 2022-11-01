---
title: "scheduleSettings resource type"
description: "Settings controlling how and when the service deploys an update over time."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# scheduleSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling how and when the service deploys an update over time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gradualRollout|[microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md)|Settings governing how to rollout content to devices. One of: [rateDrivenRolloutSettings](../resources/windowsupdates-ratedrivenrolloutsettings.md), [dateDrivenRolloutSettings](../resources/windowsupdates-datedrivenrolloutsettings.md), or [durationDrivenRolloutSettings](../resources/windowsupdates-durationdrivenrolloutsettings.md)|
|startDateTime|DateTimeOffset|Date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.scheduleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.scheduleSettings",
  "startDateTime": "String (timestamp)",
  "gradualRollout": {
    "@odata.type": "microsoft.graph.windowsUpdates.gradualRolloutSettings"
  }
}
```

