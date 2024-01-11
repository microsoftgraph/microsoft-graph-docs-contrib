---
title: "cloudPcBulkPowerOff resource type"
description: "Defines bulk power-off action using the executeAction API, with Cloud PC IDs as the only input parameter for the bulk power-off operation."
author: "Guoan-Tang "
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkPowerOff resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines bulk power-off action using the executeAction API, with Cloud PC IDs as the only input parameter for the bulk power-off operation.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Run summary of this bulk action.|
|cloudPcIds|Guid collection|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). IDs of the Cloud PCs the bulk action applies to.|
|createdDateTime|DateTimeOffset|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Time when the bulk action was created.|
|displayName|String|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Name of the bulk action.|
|id|String|Inherited from [entity](../resources/entity.md). ID of the bulk action.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkPowerOff",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkPowerOff",
  "id": "String (identifier)",
  "displayName": "String",
  "cloudPcIds": [
    "Guid"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)"
}
```

