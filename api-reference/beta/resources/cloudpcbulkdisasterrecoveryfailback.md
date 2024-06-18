---
title: "cloudPcBulkDisasterRecoveryFailback resource type"
description: "Represents the entity that performs a bulk disasterRecoveryFailback action with executeAction API."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
doc_type: resourcePageType
---

# cloudPcBulkDisasterRecoveryFailback resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk disasterRecoveryFailback action with executeAction API. This triggers/initiates action to deactivate cross region disaster recovery, which will make the Cloud PC back to the original region when the region outage recovered.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/the numbercloudpcbulkaction.md).|
|cloudPcIds|String collection|from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|displayName|String|from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
|id|String|from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkDisasterRecoveryFailback",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkDisasterRecoveryFailback",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)"
}
```
