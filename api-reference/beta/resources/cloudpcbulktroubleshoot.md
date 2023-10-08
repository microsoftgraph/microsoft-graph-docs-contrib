---
title: "cloudPcBulkTroubleshoot resource type"
description: "This defines the entity for perform bulk troubleshoot action with executeAction API and it inherits from CloudPcBulkAction base type. This triggers/initiates action to Troubleshoot specific Cloud PC. Check the Cloud PC and SessionHost health status."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkTroubleshoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This defines the entity for perform bulk troubleshoot action with executeAction API and it inherits from CloudPcBulkAction base type. This triggers/initiates action to Troubleshoot specific Cloud PC. Check the Cloud PC and SessionHost health status.

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

