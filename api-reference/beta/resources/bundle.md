---
author: JeremyKelley
ms.author: jeremyke
title: Bundle
localization_priority: Normal
ms.prod: "sharepoint"
---
# bundle resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A bundle is a logical grouping of files used to share multiple files at once. A bundle is represented as a [driveItem][] and can be shared in the same way as any other driveItem.

The **Bundle** facet on a [driveItem][] identifies an item as a bundle and groups bundle-specific information into a single structure. It is only included on [driveItem][] resources returned from the **bundles** endpoint.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.bundle" } -->
```json
{
  "childCount": 3,
  "album": { "@odata.type": "microsoft.graph.album" },
}
```

## Properties

| Property name | Type      | Description
|:--------------|:----------|:------------------------------------------------
| childCount    | Int32     | Number of children contained immediately within this container.
| album         | [album][] | If the bundle is an [album][], then the `album` property is included

## Methods

|                        Common task                         |         HTTP method                                 |
| :--------------------------------------------------------- | :-------------------------------------------------- |
| [List bundles][bundle-list]                                | `GET /drive/bundles`                                |
| [Get bundle][bundle-get]                                   | `GET /drive/bundles/{bundle-id}`                    |
| [Create bundle][bundle-create]                             | `POST /drive/bundles`                               |
| [Add item to bundle][bundle-add-item]                      | `POST /drive/bundles/{bundle-id}/children`          |
| [Remove item from bundle][bundle-remove-item]              | `DELETE /drive/bundles/{bundle-id}/items/{item-id}` |
| [Update bundle][bundle-update]                             | `PATCH /drive/bundles/{bundle-id}`                  |
| [Delete bundle][bundle-delete]                             | `DELETE /drive/bundles/{bundle-id}`                 |

[album]: album.md
[bundle-list]: ../api/bundle-list.md
[bundle-get]: ../api/bundle-get.md
[bundle-create]: ../api/bundle-create.md
[bundle-add-item]: ../api/bundle-addItem.md
[bundle-remove-item]: ../api/bundle-removeItem.md
[bundle-update]: ../api/bundle-update.md
[bundle-delete]: ../api/bundle-delete.md
[driveItem]: driveItem.md
