---
title: "industryDataRunActivity resource type"
description: "This entity is the base class for all activity types. Activities provide read-only information about the execution of flows either in the past or currently executing."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# industryDataRunActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity is the base class for all activity types. Activities provide read-only information about the execution of flows either in the past or currently executing.
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List industryDataRunActivities](../api/industrydata-industrydatarun-list-activities.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) collection|Get a list of the [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) objects and their properties.|
|[Create industryDataRunActivity](../api/industrydata-industrydatarun-post-activities.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)|Create a new [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) object.|
|[Get industryDataRunActivity](../api/industrydata-industrydatarunactivity-get.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)|Read the properties and relationships of an [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) object.|
|[Update industryDataRunActivity](../api/industrydata-industrydatarunactivity-update.md)|[microsoft.graph.industryData.industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)|Update the properties of an [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) object.|
|[Delete industryDataRunActivity](../api/industrydata-industrydatarun-delete-activities.md)|None|Deletes an [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md) object.|
|[List industryDataActivity](../api/industrydata-industrydatarunactivity-list-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md) collection|Get the industryDataActivity resources from the activity navigation property.|
|[Add industryDataActivity](../api/industrydata-industrydatarunactivity-post-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Add activity by posting to the activity collection.|
|[Remove industryDataActivity](../api/industrydata-industrydatarunactivity-delete-activity.md)|None|Remove an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockingError|[microsoft.graph.publicError](../resources/publicerror.md)|An error object to diagnose critical failures in a activity .|
|displayName|String|The name of the flow being executed.|
|status|industryDataActivityStatus|Current status of the activity .The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[industryDataActivity](../resources/industrydata-industrydataactivity.md)|The flow this activity executed.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.industryDataRunActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunActivity",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "status": "String"
}
```

