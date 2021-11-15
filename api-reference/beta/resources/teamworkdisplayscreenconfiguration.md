---
title: "teamworkDisplayScreenConfiguration resource type"
description: "Details of display screen configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDisplayScreenConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of display screen configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|backlightBrightness|Int32|Brightness level on the device (0-100). Not Applicable for Teams Room Devices.|
|backlightTimeout|Duration|Timeout for backlight (30-3600 secs). Not Applicable for Teams Room Devices.|
|isHighContrastEnabled|Boolean|True if high contrast mode is enabled. Not Applicable for Teams Room Devices.|
|isScreensaverEnabled|Boolean|True if screensaver is enabled. Not Applicable for Teams Room Devices.|
|screensaverTimeout|Duration|Screensaver Timeout from 30 to 3600 secs. Not Applicable for Teams Room Devices.|

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
  "isScreensaverEnabled": "Boolean",
  "screensaverTimeout": "String (duration)",
  "backlightBrightness": "Integer",
  "backlightTimeout": "String (duration)",
  "isHighContrastEnabled": "Boolean"
}
```

