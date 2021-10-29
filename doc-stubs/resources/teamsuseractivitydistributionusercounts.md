---
title: "teamsUserActivityDistributionUserCounts resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsUserActivityDistributionUserCounts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsUserActivityDistributionUserCounts](../api/teamsuseractivitydistributionusercounts-list.md)|[teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) collection|Get a list of the [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) objects and their properties.|
|[Get teamsUserActivityDistributionUserCounts](../api/teamsuseractivitydistributionusercounts-get.md)|[teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md)|Read the properties and relationships of a [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) object.|
|[Update teamsUserActivityDistributionUserCounts](../api/teamsuseractivitydistributionusercounts-update.md)|[teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md)|Update the properties of a [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) object.|
|[Delete teamsUserActivityDistributionUserCounts](../api/teamsuseractivitydistributionusercounts-delete.md)|None|Deletes a [teamsUserActivityDistributionUserCounts](../resources/teamsuseractivitydistributionusercounts.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|calls|Int64|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|meetings|Int64|**TODO: Add Description**|
|privateChatMessages|Int64|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.teamsUserActivityDistributionUserCounts",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsUserActivityDistributionUserCounts",
  "id": "String (identifier)",
  "reportRefreshDate": "Date",
  "teamChatMessages": "Integer",
  "privateChatMessages": "Integer",
  "calls": "Integer",
  "meetings": "Integer",
  "reportPeriod": "String"
}
```

