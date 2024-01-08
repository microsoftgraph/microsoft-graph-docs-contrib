---
title: "sharePointOneDriveOptions resource type"
description: "Provides the search content options when a search is performed using application permissions."
ms.localizationpriority: medium
author: "yiwenwang"
ms.prod: "search"
doc_type: "resourcePageType"
---

# sharePointOneDriveOptions resource type

Namespace: microsoft.graph

Provides the search content options when a search is performed using application permissions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includeContent|searchContent| The type of search content. The possible values are: `sharedContent`, `privateContent`, `unknownFutureValue`. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharePointOneDriveOptions",
  "baseType": null
}-->

```json
{
  "includeContent": "string"
}
```
