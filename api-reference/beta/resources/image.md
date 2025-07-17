---
author: spgraph-docs-team
description: "Groups image-related properties into a single structure."
ms.date: 09/10/2017
title: Image
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# Image resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups image-related properties into a single structure.
If a [**DriveItem**](driveitem.md) has a non-null **image** facet, the item represents a bitmap image.

**Note:** If the service is unable to determine the width and height of the image, the **Image** resource may be empty.

## Properties

| Property   | Type  | Description                                |
|:-----------|:------|:-------------------------------------------|
| height | Int32 | Optional. Height of the image, in pixels. Read-only. |
| width  | Int32 | Optional. Width of the image, in pixels. Read-only.  |

## Remarks

In OneDrive for Business, this resource is returned on items that are expected to be images based on file extension.

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

```json
{
  "height": 1024,
  "width": 768
}
```

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.image" } -->
```json
{
  "width": 100,
  "height": 200
}
```


<!--
{
  "type": "#page.annotation",
  "description": "The image facet describes properties of an image like width and height",
  "keywords": "image,width,height,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Image",
  "suppressions": []
}
-->


