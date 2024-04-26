---
title: "sharePointOneDriveOptions resource type"
description: "Provides the search content options when a search is performed using application permissions."
ms.localizationpriority: medium
author: "yiwenwang"
ms.subservice: "search"
doc_type: "resourcePageType"
---

# sharePointOneDriveOptions resource type

Namespace: microsoft.graph

Provides the search content options when a search is performed using application permissions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|includeContent|searchContent| The type of search content. The possible values are: `sharedContent`, `privateContent`, `unknownFutureValue`. Read-only. |
|includeHiddenContent|Boolean| This property allows developers to return content in Search results that is normally hidden from the default search experience. Examples of hidden content include archived content and SharePoint Embedded (RaaS). By default, this property is set to false, preventing hidden content from being returned. You can also optionally include KQL to scope hidden content query to content type of interest. |

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
  "includeContent": "string",
  "includeHiddenContent": true
}
```
