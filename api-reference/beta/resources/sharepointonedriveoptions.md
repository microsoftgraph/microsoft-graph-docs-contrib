---
title: "sharePointOneDriveOptions resource type"
description: "Provides search content options while search with application permission."
ms.localizationpriority: medium
author: "yiwenwang"
ms.subservice: "search"
doc_type: "resourcePageType"
---

# sharePointOneDriveOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the search content options when a search is performed using application permissions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includeContent|searchContent| The type of search content. The possible values are: `privateContent`, `sharedContent`. Read-only. |
|includeHiddenContent|Boolean| Indicates whether the search results include content that is normally hidden, such as archived content and SharePoint Embedded (RaaS). The default value is `false` that prevents hidden content from being returned. You can also optionally include KQL to scope your query for hidden content to specific content types. |

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
  "includeContent": "String",
  "includeHiddenContent": "Boolean"
}
```
