---
title: "sectionDisplayIcon resource type"
description: "Represents the icon displayed for a section in Microsoft Teams."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/08/2026
---

# sectionDisplayIcon resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the icon displayed for a [section](teamworksection.md) in Microsoft Teams. The icon can be an emoji character or a custom image.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| contentUrl | String | The URL to a custom icon image. Applicable when **iconType** is `custom`. |
| displayName | String | The human-readable name of the icon. |
| iconType | String | The type of icon. Use an emoji character such as `👍` for an emoji icon, or `custom` for a custom image icon. |
| skinTone | sectionIconSkinTone | The skin tone variant applied to the icon. Read-only. The possible values are: `light`, `mediumLight`, `medium`, `mediumDark`, `dark`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "contentUrl",
    "displayName",
    "skinTone"
  ],
  "@odata.type": "microsoft.graph.sectionDisplayIcon"
}-->

```json
{
  "@odata.type": "#microsoft.graph.sectionDisplayIcon",
  "contentUrl": "String",
  "displayName": "String",
  "iconType": "String",
  "skinTone": "String"
}
```

<!-- uuid: b2c3d4e5-f6a7-8901-bcde-f12345678901
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "sectionDisplayIcon resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->

## Related content

- [teamworkSection resource type](teamworksection.md)
