---
title: "sharePointOneDriveOptions resource type"
description: "Provides search content options while search with application permission."
ms.localizationpriority: medium
author: "yiwenwang"
ms.prod: "search"
doc_type: "resourcePageType"
---

# sharePointOneDriveOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the search content options when a search is performed using application permissions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includeContent|[includeContent](includeContent.md)| Enum type which defined the available contents while search with application permission.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.SharePointOneDriveOptions",
  "baseType": null
}-->

```json
{
  "includeContent": "privateContent,sharedContent"
}
```
