---
title: "teamworkContentCameraConfiguration resource type"
description: "Details of content camera configuration,"
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkContentCameraConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of configuration for content camera.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isContentCameraInverted|Boolean|True if content camera is inverted.|
|isContentCameraOptional|Boolean|True if content camera is optional.|
|isContentEnhancementEnabled|Boolean|True if content enhancement is enabled.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkContentCameraConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkContentCameraConfiguration",
  "isContentCameraOptional": "Boolean",
  "isContentEnhancementEnabled": "Boolean",
  "isContentCameraInverted": "Boolean"
}
```

