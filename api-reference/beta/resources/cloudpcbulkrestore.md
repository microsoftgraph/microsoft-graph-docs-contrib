---
title: "cloudPcBulkRestore resource type"
description: "Represents the entity that performs a bulk restore action with the executeAction API."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkRestore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk restore action with the executeAction API. Perform a bulk restore for a set of Cloud PCs with associated cloud PC ID and restore point date time. If some of the devices don't have any snapshots to restore, they will be set as restore failed, while the others with snapshots will still be triggered restore.

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
|restorePointDateTime|DateTimeOffset|The UTC point for the selected Cloud PCs to restore. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014, would look like this: '2014-01-01T00:00:00Z'.|
|timeRange|restoreTimeRange|The time range of the restore point. The possible values are: `before`, `after`, or `beforeOrAfter`. The default value is `before`.|

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

