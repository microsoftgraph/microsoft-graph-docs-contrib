---
title: "cloudPcBulkResize resource type"
description: "Represents the entity that performs a bulk resize action with executeAction API."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkResize resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk resize action with executeAction API. When IT admins want to upgrade or downgrade Cloud PC devices, they can use this API to trigger a resize remote action for Cloud PC. This API needs a parameter to indicate the target service plan ID to tell the service to resize this CloudPC to what configuration.

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
|targetServicePlanId|String|The target service plan id of the resize configuration with new vCPU and storage size.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

