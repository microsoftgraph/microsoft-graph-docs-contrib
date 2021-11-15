---
title: "teamworkDisplayConfiguration resource type"
description: "Details of device display configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkDisplayConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device display configuration.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|configuredDisplays|[teamworkConfiguredPeripheral](../resources/teamworkconfiguredperipheral.md) collection|List of configured displays. Applicable only for Teams Room Devices.|
|displayCount|Int32|Total number of connected displays including inbuilt display. Applicable only for Teams Room Devices.|
|inBuiltDisplayScreenConfiguration|[teamworkDisplayScreenConfiguration](../resources/teamworkdisplayscreenconfiguration.md)|Configuration for inbuilt display. Not applicable for Teams Room Devices.|
|isContentDuplicationAllowed|Boolean|True if content duplication is allowed. Applicable only for Teams Room Devices.|
|isDualDisplayModeEnabled|Boolean|True if dual display mode is enabled. If "isDualDisplayModeEnabled" is true, then when content is shared via the HDMI Ingest module on the MTR device, it will be displayed on both FoR screens vs. 1 screen. Applicable only for Teams Room Devices.|


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
  "displayCount": "Integer",
  "isDualDisplayModeEnabled": "Boolean",
  "isContentDuplicationAllowed": "Boolean",
  "configuredDisplays": [
    {
      "@odata.type": "microsoft.graph.teamworkConfiguredPeripheral"
    }
  ],
  "inBuiltDisplayScreenConfiguration": {
    "@odata.type": "microsoft.graph.teamworkDisplayScreenConfiguration"
  }
}
```

