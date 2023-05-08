---
title: "watermarkProtectionValues resource type"
description: "Indicates whether a watermark is enabled for different entities."
author: "zihzhan-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# watermarkProtectionValues resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether a watermark is enabled for different entities.

Setting either flag indicates that a watermark has been enabled for a meeting. Any clients that don't support watermarks will have a restricted (audio-only) experience in the meeting.

## Properties

| Property                   | Type    | Description                                                    |
|:---------------------------|:--------|:---------------------------------------------------------------|
| isEnabledForContentSharing | Boolean | Indicates whether to apply a watermark to any shared content.  |
| isEnabledForVideo          | Boolean | Indicates whether to apply a watermark to everyone's video feed. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.watermarkProtectionValues"
}-->
```json
{
  "@odata.type": "#microsoft.graph.watermarkProtectionValues",
  "isEnabledForContentSharing": "Boolean",
  "isEnabledForVideo": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "watermarkProtectionValues resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
