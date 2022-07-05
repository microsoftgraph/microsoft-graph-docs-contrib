---
title: "internetExplorerMode resource type"
description: "A container for Internet Explorer Mode resources."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: resourcePageType
---

# internetExplorerMode resource type

Namespace: microsoft.graph

A container for Internet Explorer Mode resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSiteLists](../api/internetexplorermode-list-sitelists.md)|[browserSiteList](../resources/browsersitelist.md) collection|Get the browserSiteList resources from the siteLists navigation property.|
|[Create browserSiteList](../api/internetexplorermode-post-sitelists.md)|[browserSiteList](../resources/browsersitelist.md)|Create a siteList by posting to the siteLists collection.|
|[Delete browserSiteList](../api/internetexplorermode-delete-sitelists.md)|None|Delete a [browserSiteList](../resources/browsersitelist.md) object.|

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteLists|[browserSiteList](../resources/browsersitelist.md) collection|A collection of Enterprise Internet Explorer mode site lists|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.internetExplorerMode",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.internetExplorerMode"
}
```

