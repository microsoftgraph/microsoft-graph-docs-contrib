---
author: spgraph-docs-team
description: "The ThumbnailSet resource is a keyed collection of thumbnail resources."
ms.date: 09/10/2017
title: ThumbnailSet
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---
# ThumbnailSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **ThumbnailSet** resource is a keyed collection of [thumbnail](thumbnail.md) resources.
It's used to represent a set of thumbnails associated with a DriveItem.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": ["source", "small", "medium", "large"],
  "openType": true,
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.thumbnailSet"
} -->

```json
{
  "id": "string (identifier)",
  "large": { "@odata.type": "microsoft.graph.thumbnail" },
  "medium": { "@odata.type": "microsoft.graph.thumbnail" },
  "small": { "@odata.type": "microsoft.graph.thumbnail" },
  "source": { "@odata.type": "microsoft.graph.thumbnail" }
}
```

## Properties

| Property | Type                      | Description                                                                       |
|:---------|:--------------------------|:----------------------------------------------------------------------------------|
| id       | String                    | The ID within the item. Read-only.                                                |
| large    | [Thumbnail](thumbnail.md) | A 1920x1920 scaled thumbnail.                                                     |
| medium   | [Thumbnail](thumbnail.md) | A 176x176 scaled thumbnail.                                                       |
| small    | [Thumbnail](thumbnail.md) | A 48x48 cropped thumbnail.                                                        |
| source   | [Thumbnail](thumbnail.md) | A custom thumbnail image or the original image used to generate other thumbnails. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "ThumbnailSet enables access to thumbnails of different sizes",
  "section": "documentation",
  "tocPath": "Resources/ThumbnailSet",
  "suppressions": []
}
-->


