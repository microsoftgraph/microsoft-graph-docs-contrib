---
title: "inboundFlowActivity resource type"
description: "Provides information about the execution of an inboundFlow."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inboundFlowActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information about the execution of an inboundFlow.


Inherits from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inboundFlowActivities](../api/industrydata-inboundflowactivity-list.md)|[microsoft.graph.industryData.inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) collection|Get a list of the [inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) objects and their properties.|
|[Get inboundFlowActivity](../api/industrydata-inboundflowactivity-get.md)|[microsoft.graph.industryData.inboundFlowActivity](../resources/industrydata-inboundflowactivity.md)|Read the properties and relationships of an [inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) object.|
|[Update inboundFlowActivity](../api/industrydata-inboundflowactivity-update.md)|[microsoft.graph.industryData.inboundFlowActivity](../resources/industrydata-inboundflowactivity.md)|Update the properties of an [inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) object.|
|[Delete inboundFlowActivity](../api/industrydata-inboundflowactivity-delete.md)|None|Deletes an [inboundFlowActivity](../resources/industrydata-inboundflowactivity.md) object.|
|[List industryDataActivity](../api/industrydata-industrydatarunactivity-list-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md) collection|Get the industryDataActivity resources from the activity navigation property.|
|[Add industryDataActivity](../api/industrydata-inboundflowactivity-post-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Add activity by posting to the activity collection.|
|[Remove industryDataActivity](../api/industrydata-inboundflowactivity-delete-activity.md)|None|Remove an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockingError|[microsoft.graph.publicError](../resources/publicerror.md)|An error object to diagnose critical failures in a activity . Inherited from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md).|
|displayName|String|The name of the flow being executed. Inherited from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md).|
|status|industryDataActivityStatus|Current status of the activity . Inherited from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md).The possible values are: `inProgress`, `skipped`, `failed`, `completed`, `completedWithErrors`, `completedWithWarnings`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activity|[industryDataActivity](../resources/industrydata-industrydataactivity.md)|The flow this activity executed. Inherited from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.inboundFlowActivity",
  "baseType": "microsoft.graph.industryData.industryDataRunActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.inboundFlowActivity",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "status": "String"
}
```

