---
author: spgraph-docs-team
title: album resource type
description: Facet describing a bundle that is a photo album.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 03/12/2024
---
# album resource type

Namespace: microsoft.graph

A photo album is a way to virtually group [driveItems][driveItem] with [photo][] facets together in a [bundle][]. Bundles of this type have the **album** property set on the [bundle][] resource.

## Properties

| Property name     | Type   | Description
|:------------------|:-------|:------------------------------------------------
| coverImageItemId | String | Unique identifier of the [driveItem][] that is the cover of the album.

**Note:** If a **coverImageItemId** hasn't been set before, the thumbnails for an album are chosen automatically.
After **coverImageItemId** has been set, the thumbnails for an album will always be the item associated with that ID.
You can override the default cover by PATCHing the [bundle item][bundle] and setting the **coverImageItemId** property on the `album` to the ID of an image contained within the album.
To remove a custom-set cover, you can set the **coverImageItemId** property to null, and a default one will be chosen automatically again.

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


