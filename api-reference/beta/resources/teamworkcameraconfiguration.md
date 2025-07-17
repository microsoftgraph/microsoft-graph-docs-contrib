---
title: "teamworkCameraConfiguration resource type"
description: "Represents the details about the camera configuration for a Microsoft Teams Rooms device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkCameraConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the camera configuration for a Microsoft Teams Rooms [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentCameraConfiguration|[teamworkContentCameraConfiguration](../resources/teamworkcontentcameraconfiguration.md)|The configuration for the content camera.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cameras|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|The list of connected cameras.|
|defaultContentCamera|[teamworkPeripheral](../resources/teamworkperipheral.md)|The configured content camera that is used to share analog whiteboard content in a meeting.|

## JSON representation
The following JSON representation shows the resource type.
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

