---
title: "teamsUserActivityUserCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsUserActivityUserCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsUserActivityUserCounts](../api/teamsuseractivityusercounts-list.md)|[teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) collection|Get a list of the [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) objects and their properties.|
|[Get teamsUserActivityUserCounts](../api/teamsuseractivityusercounts-get.md)|[teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md)|Read the properties and relationships of a [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) object.|
|[Update teamsUserActivityUserCounts](../api/teamsuseractivityusercounts-update.md)|[teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md)|Update the properties of a [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) object.|
|[Delete teamsUserActivityUserCounts](../api/teamsuseractivityusercounts-delete.md)|None|Deletes a [teamsUserActivityUserCounts](../resources/teamsuseractivityusercounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calls|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|meetings|Int64|**TODO: Add Description**|
|otherActions|Int64|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.teamsUserActivityUserCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsUserActivityUserCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "reportDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "otherActions": "Integer",
  "reportPeriod": "String"
}
```

