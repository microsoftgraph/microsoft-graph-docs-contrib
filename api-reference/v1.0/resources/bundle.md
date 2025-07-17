---
author: spgraph-docs-team
title: bundle resource type
description: Facet describing a driveItem that is a logical grouping of other driveItems
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 06/06/2024
---
# bundle resource type

Namespace: microsoft.graph

A bundle is a logical grouping of files used to share multiple files at once. It is represented by a [driveItem][] entity containing a `bundle` facet and can be shared in the same way as any other driveItem.

The `bundle` facet on a [driveItem][] identifies an item as a bundle and groups bundle-specific information into a single structure. It is only included on [driveItem][] resources returned from the **bundles** endpoint.

Note that the `bundle` resource type itself is not an entity of its own, and is only a facet on a [driveItem][]. The `bundles` collection on a [drive][] is of type [driveItem][], not `bundle`.

## Methods

|                        Method             |         Return type      | Description        |
| :---------------------------------------- | :----------------------- | :------------------|
| [List bundles][bundle-list]               | [driveItem][] collection | List all bundles in a drive |
| [Get bundle][bundle-get]                  | [driveItem][]            | Get bundle metadata |
| [Create bundle][bundle-create]            | [driveItem][]            | Create a new bundle |
| [Add item][bundle-add-item]               | None                     | Add a [driveItem][] to an existing bundle |
| [Remove item][bundle-remove-item]         | None                     | Remove a [driveItem][] from an existing bundle |
| [Update bundle][bundle-update]            | [driveItem][]            | Update bundle metadata |
| [Delete bundle][bundle-delete]            | None                     | Delete bundle |


## Properties

| Property name | Type      | Description
|:--------------|:----------|:------------------------------------------------
| album         | [album][] | If the bundle is an [album][], then the `album` property is included|
| childCount    | Int32     | Number of children contained immediately within this container.|

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.bundle" } -->
```json
{
  "album": { "@odata.type": "microsoft.graph.album" },
  "childCount": 3
}
```

[album]: album.md
[drive]: drive.md
[driveItem]: driveItem.md

[bundle-list]: ../api/bundle-list.md
[bundle-get]: ../api/bundle-get.md
[bundle-create]: ../api/drive-post-bundles.md
[bundle-add-item]: ../api/bundle-additem.md
[bundle-remove-item]: ../api/bundle-removeitem.md
[bundle-update]: ../api/bundle-update.md
[bundle-delete]: ../api/bundle-delete.md


