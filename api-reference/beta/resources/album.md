---
author: jeremyke
ms.author: rgregg
title: Album
localization_priority: Normal
ms.prod: "sharepoint"
---
# album resource type

A Photo album is one way [driveItems][driveItem] with the [photo][] facet can be virtually grouped in a [bundle][].

It is available on the album property of [bundle][] facet on a driveItem.

## JSON representation of a **Bundle** that is an **Album**

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.album" } -->

```json
{
  "coverSourceId": "string"
}
```

## Properties

| Property name     | Type   | Description
|:------------------|:-------|:------------------------------------------------
| **coverSourceId** | String | Unique identifier of the item that is the cover of the album.

**Note:** If a `coverSourceId` has not been set before, the thumbnails for an album are chosen automatically.
Once `coverSourceId` has been set, the thumbnails for an album will always be the item associated with that `id`.
You may override the default cover by PATCHing the [Bundle item][bundle] and setting the `sourceItemId` property on the `album` to the `id` of an image contained within the album.
To remove a custom-set cover, you can set the `coverSourceId` property to null, and a default one will be chosen automatically again.

[bundle]: bundle.md
[driveItem]: driveItem.md
[photo]: photo.md
