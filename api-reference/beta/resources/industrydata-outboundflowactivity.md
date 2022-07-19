---
title: "outboundFlowActivity resource type"
description: "Provides information about the execution of an outboundFlow."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# outboundFlowActivity resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information about the execution of an outboundFlow.


Inherits from [industryDataRunActivity](../resources/industrydata-industrydatarunactivity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List outboundFlowActivities](../api/industrydata-outboundflowactivity-list.md)|[microsoft.graph.industryData.outboundFlowActivity](../resources/industrydata-outboundflowactivity.md) collection|Get a list of the [outboundFlowActivity](../resources/industrydata-outboundflowactivity.md) objects and their properties.|
|[Get outboundFlowActivity](../api/industrydata-outboundflowactivity-get.md)|[microsoft.graph.industryData.outboundFlowActivity](../resources/industrydata-outboundflowactivity.md)|Read the properties and relationships of an [outboundFlowActivity](../resources/industrydata-outboundflowactivity.md) object.|
|[Update outboundFlowActivity](../api/industrydata-outboundflowactivity-update.md)|[microsoft.graph.industryData.outboundFlowActivity](../resources/industrydata-outboundflowactivity.md)|Update the properties of an [outboundFlowActivity](../resources/industrydata-outboundflowactivity.md) object.|
|[Delete outboundFlowActivity](../api/industrydata-outboundflowactivity-delete.md)|None|Deletes an [outboundFlowActivity](../resources/industrydata-outboundflowactivity.md) object.|
|[List industryDataActivity](../api/industrydata-industrydatarunactivity-list-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md) collection|Get the industryDataActivity resources from the activity navigation property.|
|[Add industryDataActivity](../api/industrydata-outboundflowactivity-post-activity.md)|[microsoft.graph.industryData.industryDataActivity](../resources/industrydata-industrydataactivity.md)|Add activity by posting to the activity collection.|
|[Remove industryDataActivity](../api/industrydata-outboundflowactivity-delete-activity.md)|None|Remove an [industryDataActivity](../resources/industrydata-industrydataactivity.md) object.|

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
  "@odata.type": "microsoft.graph.industryData.outboundFlowActivity",
  "baseType": "microsoft.graph.industryData.industryDataRunActivity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.industryData.outboundFlowActivity",
  "blockingError": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "displayName": "String",
  "status": "String"
}
```

