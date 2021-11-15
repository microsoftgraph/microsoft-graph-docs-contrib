---
title: "teamworkCameraConfiguration resource type"
description: "Details of camera configuration of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkCameraConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of the camera configuration of a device.
This is applicable only for Teams Room devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentCameraConfiguration|[teamworkContentCameraConfiguration](../resources/teamworkcontentcameraconfiguration.md)|Configuration for content camera.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cameras|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|List of connected cameras.|
|defaultContentCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|Info for the configured content camera.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkCameraConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkCameraConfiguration",
  "contentCameraConfiguration": {
    "@odata.type": "microsoft.graph.teamworkContentCameraConfiguration"
  }
}
```

