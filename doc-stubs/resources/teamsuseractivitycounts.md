---
title: "teamsUserActivityCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsUserActivityCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsUserActivityCounts](../api/teamsuseractivitycounts-list.md)|[teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) collection|Get a list of the [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) objects and their properties.|
|[Get teamsUserActivityCounts](../api/teamsuseractivitycounts-get.md)|[teamsUserActivityCounts](../resources/teamsuseractivitycounts.md)|Read the properties and relationships of a [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) object.|
|[Update teamsUserActivityCounts](../api/teamsuseractivitycounts-update.md)|[teamsUserActivityCounts](../resources/teamsuseractivitycounts.md)|Update the properties of a [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) object.|
|[Delete teamsUserActivityCounts](../api/teamsuseractivitycounts-delete.md)|None|Deletes a [teamsUserActivityCounts](../resources/teamsuseractivitycounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calls|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|meetings|Int64|**TODO: Add Description**|
|privateChatMessages|Int64|**TODO: Add Description**|
|reportDate|Date|**TODO: Add Description**|
|reportPeriod|String|**TODO: Add Description**|
|reportRefreshDate|Date|**TODO: Add Description**|
|teamChatMessages|Int64|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsUserActivityCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsUserActivityCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "reportDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "reportPeriod": "String"
}
```

