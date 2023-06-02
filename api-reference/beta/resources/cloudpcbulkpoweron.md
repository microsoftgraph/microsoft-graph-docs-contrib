---
title: "cloudPcBulkPowerOn resource type"
description: "This defines the entity for performing bulk power ofnaction with executeAction API and it inherits from CloudPcBulkAction base type. There's only Cloud PC ids as the input parameter for bulk power on action"
author: "Guoan-Tang "
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkPowerOn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This defines the entity for performing bulk power ofnaction with executeAction API and it inherits from CloudPcBulkAction base type. There's only Cloud PC ids as the input parameter for bulk power on action

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|cloudPcIds|Guid collection|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkPowerOn",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkPowerOn",
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

