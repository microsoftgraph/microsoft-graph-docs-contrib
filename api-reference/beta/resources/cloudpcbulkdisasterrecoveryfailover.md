---
title: "cloudPcBulkDisasterRecoveryFailover resource type"
description: "Represents the entity that performs a bulk disasterRecoveryFailover action with executeAction API."
author: "xhhzuikeaiya"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkDisasterRecoveryFailover resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk disasterRecoveryFailover action with executeAction API. This triggers/initiates action to activate cross region disaster recovery，which will restore a temp cloud PC in backup region from the cross region snapshot in case of Cloud PC's original region under outage.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).|
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
  "@odata.type": "microsoft.graph.cloudPcBulkDisasterRecoveryFailover",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkDisasterRecoveryFailover",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)"
}
```
