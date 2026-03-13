---
title: "userExperienceSettings resource type"
description: "Settings that control the user's update experience on a device."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# userExperienceSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings that control the user's update experience on a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|daysUntilForcedReboot|Int32|Specifies the number of days after an update is installed, during which the user of the device can control when the device restarts.|
|isHotpatchEnabled|Boolean|Specifies whether the update is offered as a hotpatch. It can only be set to `true` on automatic policies that target monthly security updates.|
|offerAsOptional|Boolean|Specifies whether the update is offered as **Optional** rather than **Required**. |

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
  "daysUntilForcedReboot": "Int32",
  "isHotpatchEnabled": "Boolean", 
  "offerAsOptional": "Boolean"
}
```

