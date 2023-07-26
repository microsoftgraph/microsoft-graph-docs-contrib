---
title: "cloudPcBulkRestore resource type"
description: "This defines the entity for perform bulk restore action with executeAction API and it inherits from CloudPcBulkAction base type. Perform bulk restore for a set of Cloud PCs with associated cloud PC id and restore point date time. If some of the devices don't have any snapshot to restore, then they will be set as restore failed, while the others with snapshots will still be triggered restore."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkRestore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This defines the entity for perform bulk restore action with executeAction API and it inherits from CloudPcBulkAction base type. Perform bulk restore for a set of Cloud PCs with associated cloud PC id and restore point date time. If some of the devices don't have any snapshot to restore, then they will be set as restore failed, while the others with snapshots will still be triggered restore.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|cloudPcIds|String collection|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|restorePointDateTime|DateTimeOffset|The UTC time point for selected Cloud PCs to restore to. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'.|
|timeRange|restoreTimeRange|The time range of restore point. Value can be `before`, `after` or `beforeOrAfter`, default value is `before`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkRestore",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkRestore",
  "id": "String (identifier)",
  "displayName": "String",
  "cloudPcIds": [
    "String"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)",
  "restorePointDateTime": "String (timestamp)",
  "timeRange": "String"
}
```

