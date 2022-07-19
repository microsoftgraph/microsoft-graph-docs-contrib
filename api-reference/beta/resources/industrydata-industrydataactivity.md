---
title: "industryDataActivity resource type"
description: "Base class for all processes that the underlying scheduler executes."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base class for all processes that the underlying scheduler executes.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List industryDataActivities](../api/industrydata-industrydatarunactivity-list-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md) collection|Get a list of the [industryDataActivity](../resources/industrydata-industrydataactivity.md) objects and their properties.|
|[Create industryDataActivity](../api/industrydata-industrydatarunactivity-post-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Create a new [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|
|[Get industryDataActivity](../api/industrydata-industrydataactivity-get.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Read the properties and relationships of an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|
|[Update industryDataActivity](../api/industrydata-industrydataactivity-update.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Update the properties of an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|
|[Delete industryDataActivity](../api/industrydata-industrydatarunactivity-delete-activity.md)|None|Deletes an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the process.|
|readinessStatus|readinessStatus|The state of the process from creation through to ready to do work.The possible values are: `notReady`, `ready`, `failed`, `disabled`, `expired`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataActivity",
  "displayName": "String",
  "readinessStatus": "String"
}
```

