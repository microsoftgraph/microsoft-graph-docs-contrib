---
author: spgraph-docs-team
description: "The Folder resource groups folder-related data on an item into a single structure. "
ms.date: 09/10/2017
title: Folder
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# Folder resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Folder** resource groups folder-related data on an item into a single structure.
[**DriveItems**](driveitem.md) with a non-null **folder** facet are containers for other DriveItems.

## Properties

| Property       | Type           | Description|
|:---------------|:---------------|:-------------------------------------------|
| childCount | Int64          | Number of children contained immediately within this container.|
| view       | [folderView][] | A collection of properties defining the recommended view for the folder.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.folder"
}-->

```json
{
  "childCount": 1024,
  "view": { "@odata.type": "microsoft.graph.folderView" }
}
```
## Remarks

For more information about the facets on a DriveItem, see [DriveItem][].

[folderView]: folderview.md
[DriveItem]: driveitem.md

<!--
{
  "type": "#page.annotation",
  "description": "folder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


