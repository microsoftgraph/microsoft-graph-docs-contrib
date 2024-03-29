---
title: "cloudPcBulkResize resource type"
description: "Represents the entity that performs a bulk resize action."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkResize resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk resize action. When IT administrators want to upgrade or downgrade Cloud PC devices, they can use this API to trigger a resize remote action for the Cloud PC. This API requires a parameter that specifies the target service plan ID that indicates the configuration to which the Cloud PC should be resized.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Run summary of this bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|cloudPcIds|String collection|IDs of the Cloud PCs the bulk action applies to. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|createdDateTime|DateTimeOffset|The date and time when the bulk action was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|displayName|String|Name of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|id|String|ID of the bulk action. Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). |
|targetServicePlanId|String|The target service plan ID of the resize configuration with new vCPU and storage size.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkResize",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkResize",
  "actionSummary": {"@odata.type": "microsoft.graph.cloudPcBulkActionSummary"},
  "cloudPcIds": ["String"],
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "targetServicePlanId": "String"
}
```
