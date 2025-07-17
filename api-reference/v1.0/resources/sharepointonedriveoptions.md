---
title: "sharePointOneDriveOptions resource type"
description: "Provides the search content options when a search is performed using application permissions."
ms.localizationpriority: medium
author: "yiwenwang"
ms.subservice: "search"
doc_type: "resourcePageType"
toc.title: "SharePoint OneDrive options"
ms.date: 09/18/2024
---

# sharePointOneDriveOptions resource type

Namespace: microsoft.graph

Provides the search content options when a search is performed using application permissions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includeContent|searchContent| The type of search content. The possible values are: `sharedContent`, `privateContent`, `unknownFutureValue`. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharePointOneDriveOptions",
  "baseType": null
}-->

```json
{
  "includeContent": "String"
}
```
