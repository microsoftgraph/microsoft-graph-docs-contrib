---
title: "cloudPcBulkTroubleshoot resource type"
description: "Represents the entity that performs a bulk troubleshooting action with the executeAction API."
author: "Guoan-Tang"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkTroubleshoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entity that performs a bulk troubleshooting action with the executeAction API. It triggers/initiates an action to troubleshoot a specific Cloud PC. Check the Cloud PC and sessionHost health status.

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

