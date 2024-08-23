---
title: "userExperienceSettings resource type"
description: "Settings controlling the user's update experience on a device."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: resourcePageType
---

# userExperienceSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings controlling the user's update experience on a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|daysUntilForcedReboot|Int32|Specifies the number of days after an update is installed, during which the user of the device can control when the device restarts.|
|offerAsOptional|Boolean|Specifies whether the update is offered as **Optional** rather than **Required**.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.userExperienceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.userExperienceSettings",
  "daysUntilForcedReboot": "Integer", 
  "offerAsOptional": "Boolean"
}
```

