---
title: "cloudPcBulkPowerOff resource type"
description: "Inherits from cloudPcBulkAction. Defines the bulk power off action using the executeAction API, with Cloud PC IDs as the only input parameter for bulk power on action."
author: "Guoan-Tang "
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkPowerOff resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This defines the entity for performing bulk power off action with executeAction API and it inherits from CloudPcBulkAction base type. There's only Cloud PC ids as the input parameter for bulk power on action.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|cloudPcIds|Guid collection|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|Inherited from [entity](../resources/entity.md).|

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

