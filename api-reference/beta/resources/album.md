---
author: spgraph-docs-team
title: album resource type
description: Facet describing a bundle that is a photo album.
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 03/06/2024
---

# album resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A photo album is a way to virtually group [driveItems][driveItem] with [photo][] facets together in a [bundle][]. Bundles of this type have the **album** property set on the [bundle][] resource.

## Properties

| Property         | Type   | Description                                                            |
| :--------------- | :----- | :--------------------------------------------------------------------- |
| coverImageItemId | String | Unique identifier of the [driveItem][] that is the cover of the album. |

**Note:** If a **coverImageItemId** isn't set, the thumbnails for an album are chosen automatically.
After **coverImageItemId** is set, the thumbnails for an album are always the item associated with that id.
You can override the default cover by PATCHing the [bundle item][bundle] and setting the **coverImageItemId** property on the `album` to the id of an image contained within the album.
To remove a custom-set cover, you can set the **coverImageItemId** property to null, and a default one is automatically chosen again.

## Relationships
None.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.album" } -->

```json
{
  "coverImageItemId": "string"
}
```

[bundle]: bundle.md
[driveItem]: driveItem.md
[photo]: photo.md
