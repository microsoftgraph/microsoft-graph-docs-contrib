---
title: "cloudPcBulkAction resource type"
description: "Represents the bulk action applied to Cloud PCs specified in a parameter."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the bulk action applied to Cloud PCs specified in a parameter. This resource is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcBulkActions](../api/virtualendpoint-list-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Create cloudPcBulkAction](../api/virtualendpoint-post-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Get cloudPcBulkAction](../api/cloudpcbulkaction-get.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Read the properties and relationships of a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action.|
|cloudPcIDs|Guid collection|ID of the Cloud PCs the bulk action applies to. |
|createdDateTime|DateTimeOffset|Time when the bulk action was created.|
|displayName|String|Name of the bulk action.|
|id|Guid|ID of the bulk action.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkAction",
  "displayName": "String",
  "id": "String (identifier)",
  "cloudPcIds": [
    "Guid"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)"
}
```

