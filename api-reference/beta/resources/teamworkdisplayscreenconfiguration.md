---
title: "teamworkDisplayScreenConfiguration resource type"
description: "Represents the details about the display screen configuration for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDisplayScreenConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the details about the display screen configuration for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backlightBrightness|Int32|The brightness level on the device (0-100). Not applicable for Microsoft Teams Rooms devices.|
|backlightTimeout|Duration|Timeout for backlight (30-3600 secs). Not applicable for Teams Rooms devices.|
|isHighContrastEnabled|Boolean|`True` if high contrast mode is enabled. Not applicable for Teams Rooms devices.|
|isScreensaverEnabled|Boolean|`True` if screensaver is enabled. Not applicable for Teams Rooms devices.|
|screensaverTimeout|Duration|Screensaver timeout from 30 to 3600 secs. Not applicable for Teams Rooms devices.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDisplayScreenConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDisplayScreenConfiguration",
  "backlightBrightness": "Integer",
  "backlightTimeout": "String (duration)",
  "isHighContrastEnabled": "Boolean",
  "isScreensaverEnabled": "Boolean",
  "screensaverTimeout": "String (duration)"
}
```

