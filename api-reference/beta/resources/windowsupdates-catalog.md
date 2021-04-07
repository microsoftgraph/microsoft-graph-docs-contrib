---
title: "catalog resource type"
description: "Represents the catalog of content that can be approved for deployment."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# catalog resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the catalog of content that can be approved for deployment.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List entries](../api/windowsupdates-catalog-list-entries.md)|[catalogEntry](../resources/windowsupdates-catalogentry.md) collection|Get the catalog entry resources from the entries navigation property. Returns catalog entry resources of the following derived types: [featureUpdateCatalogEntry](../resources/windowsupdates-featureupdatecatalogentry.md), [qualityUpdateCatalogEntry](../resources/windowsupdates-qualityupdatecatalogentry.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the catalog. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|entries|[catalogEntry](../resources/windowsupdates-catalogentry.md) collection|Lists the content that can be approved for deployment. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.catalog",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalog",
  "id": "String (identifier)"
}
```

