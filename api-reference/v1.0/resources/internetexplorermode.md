---
title: "internetExplorerMode resource type"
description: "Represents a container for Internet Explorer mode resources."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: resourcePageType
---

# internetExplorerMode resource type

Namespace: microsoft.graph

Represents a container for [Internet Explorer mode](/deployedge/edge-ie-mode) resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List browserSiteLists](../api/internetexplorermode-list-sitelists.md)|[browserSiteList](../resources/browsersitelist.md) collection|Get a list of the [browserSiteList](../resources/browsersitelist.md) objects and their properties.|
|[Create browserSiteList](../api/internetexplorermode-post-sitelists.md)|[browserSiteList](../resources/browsersitelist.md)|Create a new [browserSiteList](../resources/browsersitelist.md) object to support [Internet Explorer mode](/deployedge/edge-ie-mode).|
|[Delete browserSiteList](../api/internetexplorermode-delete-sitelists.md)|None|Delete a [browserSiteList](../resources/browsersitelist.md) object.|

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteLists|[browserSiteList](../resources/browsersitelist.md) collection|A collection of site lists to support Internet Explorer mode.|

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

