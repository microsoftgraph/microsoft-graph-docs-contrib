---
author: JeremyKelley
ms.author: jeremyke
title: Bundle
localization_priority: Normal
ms.prod: "sharepoint"
---
# bundle resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Bundle** facet identifies an item as a bundle and groups bundle-specific information into a single structure.

It is only included on [driveItem][] resources returned from the **bundles** endpoint.

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

[album]: album.md
[driveItem]: driveItem.md
