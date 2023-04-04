---
title: "CloudPcBulkAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# CloudPcBulkAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List CloudPcBulkActions](../api/cloudpcbulkaction-list.md)|[CloudPcBulkAction](../resources/cloudpcbulkaction.md) collection|Get a list of the [CloudPcBulkAction](../resources/cloudpcbulkaction.md) objects and their properties.|
|[Get CloudPcBulkAction](../api/cloudpcbulkaction-get.md)|[CloudPcBulkAction](../resources/cloudpcbulkaction.md)|Read the properties and relationships of a [CloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Update CloudPcBulkAction](../api/cloudpcbulkaction-update.md)|[CloudPcBulkAction](../resources/cloudpcbulkaction.md)|Update the properties of a [CloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|
|[Delete CloudPcBulkAction](../api/cloudpcbulkaction-delete.md)|None|Delete a [CloudPcBulkAction](../resources/cloudpcbulkaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[CloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|**TODO: Add Description**|
|cloudPcIds|Guid collection|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|Guid|**TODO: Add Description**|

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

