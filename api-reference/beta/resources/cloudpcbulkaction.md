---
title: "cloudPcBulkAction resource type"
description: "An abstract type tha represents the bulk action applied to Cloud PCs specified in a parameter."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type tha represents the bulk action applied to Cloud PCs specified in a parameter.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bulkActions](../api/virtualendpoint-list-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Create cloudPcBulkAction](../api/virtualendpoint-post-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Get cloudPcBulkAction](../api/cloudpcbulkaction-get.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Read the properties and relationships of a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action.|
|cloudPcIDs|String collection|IDs of the Cloud PCs the bulk action applies to. |
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|Name of the bulk action.|
|id|String|ID of the bulk action. Inherited from [entity](entity.md).|

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
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)"
}
```
