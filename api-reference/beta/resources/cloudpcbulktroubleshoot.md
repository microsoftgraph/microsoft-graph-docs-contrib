---
title: "cloudPcBulkTroubleshoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# cloudPcBulkTroubleshoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [cloudPcBulkAction](../resources/intune-cloudpcbulkaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcBulkTroubleshoots](../api/intune-cloudpcbulktroubleshoot-list.md)|[cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md) collection|Get a list of the [cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md) objects and their properties.|
|[Get cloudPcBulkTroubleshoot](../api/intune-cloudpcbulktroubleshoot-get.md)|[cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md)|Read the properties and relationships of a [cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md) object.|
|[Update cloudPcBulkTroubleshoot](../api/intune-cloudpcbulktroubleshoot-update.md)|[cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md)|Update the properties of a [cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md) object.|
|[Delete cloudPcBulkTroubleshoot](../api/intune-cloudpcbulktroubleshoot-delete.md)|None|Delete a [cloudPcBulkTroubleshoot](../resources/intune-cloudpcbulktroubleshoot.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[cloudPcBulkActionSummary](../resources/intune-cloudpcbulkactionsummary.md)|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/intune-cloudpcbulkaction.md).|
|cloudPcIds|String collection|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/intune-cloudpcbulkaction.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/intune-cloudpcbulkaction.md).|
|displayName|String|**TODO: Add Description** Inherited from [cloudPcBulkAction](../resources/intune-cloudpcbulkaction.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

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

