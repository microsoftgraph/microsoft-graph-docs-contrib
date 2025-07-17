---
author: spgraph-docs-team
description: " or a collection of items that should be treated as a collection instead of individual items."
ms.date: 09/10/2017
title: Package
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# Package resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **Package** resource indicates that a DriveItem is the top level item in a "package" or a collection of items that should be treated as a collection instead of individual items.

An example of a package is a OneNote notebook.
While the notebook is made up of files and folders that represent the contents of the notebook, the top level item that represents the notebook has a **package** facet to indicate to clients that this is a collection of data that should be treated special.

DriveItems with the **package** facet do not include a **folder** or **file** facet but are conceptually similar to an item with a **folder** facet.

## Properties

| Property Name | Type   | Description                                                                                                                                                                      |
|:--------------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| type      | string | Indicates the type of package. While `oneNote` is the only currently defined value, you should expect other package types to be returned and handle them accordingly. |

## Relationships
None.

## JSON representation

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.package" } -->
```json
{
  "type": "oneNote"
}
```
## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).


<!--
{
  "type": "#page.annotation",
  "description": "The Package facet indicates that an item is the root of a special collection of items that should be treated as a single unit.",
  "keywords": "package, facet, onenote",
  "section": "documentation",
  "suppressions": []
}
-->


