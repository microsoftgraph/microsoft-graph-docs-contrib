---
title: "cloudPcBulkResize resource type"
description: "Represents the entity that performs a bulk resize action with the executeAction API."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkResize resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk resize action with the executeAction API. When IT admins want to upgrade or downgrade Cloud PC devices, they can use this API to trigger a resize remote action for Cloud PC. This API needs a parameter to indicate the target service plan ID to tell the service to resize this CloudPC to what configuration.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/cloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Run summary of this bulk action.|
|cloudPcIds|Guid collection|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). ID of Cloud PCs the bulk action applies to.|
|createdDateTime|DateTimeOffset|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Time when the bulk action was created.|
|displayName|String|Inherited from [cloudPcBulkAction](../resources/cloudpcbulkaction.md). Name of the bulk action.|
|id|String|Inherited from [entity](../resources/entity.md). ID of the bulk action.|
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
  "id": "String (identifier)",
  "displayName": "String",
  "cloudPcIds": [
    "String"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)",
  "targetServicePlanId": "String"
}
```

