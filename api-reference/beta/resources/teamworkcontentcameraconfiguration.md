---
title: "teamworkContentCameraConfiguration resource type"
description: "Represents configuration details for a content camera connected to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkContentCameraConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration details for a content camera connected to a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isContentCameraInverted|Boolean|`True` if the content camera is inverted.|
|isContentCameraOptional|Boolean|`True` if the content camera is optional.|
|isContentEnhancementEnabled|Boolean|`True` if the content enhancement is enabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkContentCameraConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkContentCameraConfiguration",
  "isContentCameraInverted": "Boolean",
  "isContentCameraOptional": "Boolean",
  "isContentEnhancementEnabled": "Boolean"
}
```

