---
title: "internetExplorerMode resource type"
description: "Represents a container for Internet Explorer mode resources."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.subservice: "edge-browser-management"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# internetExplorerMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for [Internet Explorer mode](/deployedge/edge-ie-mode) resources.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/internetexplorermode-list-sitelists.md)|[browserSiteList](../resources/browsersitelist.md) collection|Get a list of the [browserSiteList](../resources/browsersitelist.md) objects and their properties.|
|[Create](../api/internetexplorermode-post-sitelists.md)|[browserSiteList](../resources/browsersitelist.md)|Create a new [browserSiteList](../resources/browsersitelist.md) object to support [Internet Explorer mode](/deployedge/edge-ie-mode).|
|[Delete](../api/internetexplorermode-delete-sitelists.md)|None|Delete a [browserSiteList](../resources/browsersitelist.md) object.|

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteLists|[browserSiteList](../resources/browsersitelist.md) collection|A collection of site lists to support Internet Explorer mode.|

## JSON representation
The following JSON representation shows the resource type.
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

