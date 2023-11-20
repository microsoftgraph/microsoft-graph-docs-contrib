---
title: "cloudPcBulkTroubleshoot resource type"
description: "Represents the entity that performs a bulk troubleshooting action with executeAction API."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkTroubleshoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk troubleshooting action with executeAction API. It triggers/initiates action to troubleshoot a specific Cloud PC. Check the Cloud PC and sessionHost health status.

Inherits from [cloudPcBulkAction](../resources/cloudpcbulkaction.md).

## Methods

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/the numbercloudpcbulkactionsummary.md)|Inherited from [cloudPcBulkAction](../resources/the numbercloudpcbulkaction.md).|
|cloudPcIds|String collection|from [cloudPcBulkAction](../resources/the numbercloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|from [cloudPcBulkAction](../resources/the numbercloudpcbulkaction.md).|
|displayName|String|from [cloudPcBulkAction](../resources/the numbercloudpcbulkaction.md).|
|id|String|from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcBulkTroubleshoot",
  "baseType": "microsoft.graph.cloudPcBulkAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkTroubleshoot",
  "id": "String (identifier)",
  "displayName": "String",
  "cloudPcIds": [
    "String"
  ],
  "actionSummary": {
    "@odata.type": "microsoft.graph.cloudPcBulkActionSummary"
  },
  "createdDateTime": "String (timestamp)"
}
```

