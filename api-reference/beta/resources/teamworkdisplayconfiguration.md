---
title: "teamworkDisplayConfiguration resource type"
description: "Represents the details about the display configuration for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDisplayConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the display configuration for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuredDisplays|[teamworkConfiguredPeripheral](../resources/teamworkconfiguredperipheral.md) collection|The list of configured displays. Applicable only for Microsoft Teams Rooms devices.|
|displayCount|Int32|Total number of connected displays, including the inbuilt display. Applicable only for Teams Rooms devices.|
|inBuiltDisplayScreenConfiguration|[teamworkDisplayScreenConfiguration](../resources/teamworkdisplayscreenconfiguration.md)|Configuration for the inbuilt display. Not applicable for Teams Rooms devices.|
|isContentDuplicationAllowed|Boolean|`True` if content duplication is allowed. Applicable only for Teams Rooms devices.|
|isDualDisplayModeEnabled|Boolean|`True` if dual display mode is enabled. If **isDualDisplayModeEnabled** is `true`, then the content will be displayed on both front of room screens instead of just the one screen, when it is shared via the HDMI ingest module on the Microsoft Teams Rooms device. Applicable only for Teams Rooms devices.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkDisplayConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkDisplayConfiguration",
  "configuredDisplays": [
    {
      "@odata.type": "microsoft.graph.teamworkConfiguredPeripheral"
    }
  ],
  "displayCount": "Integer",
  "inBuiltDisplayScreenConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDisplayScreenConfiguration"
  },
  "isContentDuplicationAllowed": "Boolean",
  "isDualDisplayModeEnabled": "Boolean"
}
```

