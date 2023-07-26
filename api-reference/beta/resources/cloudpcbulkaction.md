---
title: "cloudPcBulkAction resource type"
description: "Entity that represents the bulk action which will be applied to cloudPcs specified in parameter."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# CloudPcBulkAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that represents the bulk action which will be applied to cloudPcs specified in parameter. This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcBulkActions](../api/virtualendpoint-list-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [cloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Create cloudPcBulkAction](../api/virtualendpoint-post-bulkactions.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Create a new [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Get cloudPcBulkAction](../api/cloudpcbulkaction-get.md)|[cloudPcBulkAction](../resources/cloudpcbulkaction.md)|Read the properties and relationships of a [cloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[CloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action|
|cloudPcIds|Guid collection|Id of cloudPcs this bulk action will apply to|
|createdDateTime|DateTimeOffset|Time when this bulk action was created|
|displayName|String|Name of this bulk action|
|id|Guid|Id of this bulk action|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.CloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.CloudPcBulkAction",
  "displayName": "String",
  "id": "String (identifier)",
  "cloudPcIds": [
    "Guid"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.CloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)"
}
```

