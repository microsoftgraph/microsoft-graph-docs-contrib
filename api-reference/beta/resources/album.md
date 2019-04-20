---
author: JeremyKelley
ms.author: jeremyke
title: Album
localization_priority: Normal
ms.prod: "sharepoint"
---
# album resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Photo album is one way [driveItems][driveItem] with the [photo][] facet can be virtually grouped in a [bundle][].

It is available on the album property of [bundle][] facet on a driveItem.

## JSON representation of a **Bundle** that is an **Album**

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.album" } -->

```json
{
  "coverImageItemId": "string"
}
```

## Properties

| Property name     | Type   | Description
|:------------------|:-------|:------------------------------------------------
| **coverImageItemId** | String | Unique identifier of the [driveItem][] that is the cover of the album.

**Note:** If a `coverImageItemId` has not been set before, the thumbnails for an album are chosen automatically.
Once `coverImageItemId` has been set, the thumbnails for an album will always be the item associated with that `id`.
You may override the default cover by PATCHing the [Bundle item][bundle] and setting the `sourceItemId` property on the `album` to the `id` of an image contained within the album.
To remove a custom-set cover, you can set the `coverImageItemId` property to null, and a default one will be chosen automatically again.

[bundle]: bundle.md
[driveItem]: driveItem.md
[photo]: photo.md
