---
title: "scheduleSettings resource type"
description: "Represents settings for controlling how and when the service deploys an update over time."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# scheduleSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for controlling how and when the service deploys an update over time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|gradualRollout|[microsoft.graph.windowsUpdates.gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md)|Settings for governing how to rollout content to devices. One of: [microsoft.graph.windowsUpdates.dateDrivenRolloutSettings](../resources/windowsupdates-datedrivenrolloutsettings.md), [microsoft.graph.windowsUpdates.durationDrivenRolloutSettings](../resources/windowsupdates-durationdrivenrolloutsettings.md), or [microsoft.graph.windowsUpdates.rateDrivenRolloutSettings](../resources/windowsupdates-ratedrivenrolloutsettings.md).|
|startDateTime|DateTimeOffset|The date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
  "gradualRollout": {"@odata.type": "microsoft.graph.windowsUpdates.gradualRolloutSettings"},
  "startDateTime": "String (timestamp)"
}
```
