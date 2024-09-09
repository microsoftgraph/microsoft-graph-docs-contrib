---
title: "callAiInsight resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# callAiInsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onlinemeeting-list-aiinsights.md)|[callAiInsight](../resources/callaiinsight.md) collection|Get a list of the [callAiInsight](../resources/callaiinsight.md) objects and their properties.|
|[Create](../api/onlinemeeting-post-aiinsights.md)|[callAiInsight](../resources/callaiinsight.md)|Create a new [callAiInsight](../resources/callaiinsight.md) object.|
|[Get](../api/callaiinsight-get.md)|[callAiInsight](../resources/callaiinsight.md)|Read the properties and relationships of a [callAiInsight](../resources/callaiinsight.md) object.|
|[Update](../api/callaiinsight-update.md)|[callAiInsight](../resources/callaiinsight.md)|Update the properties of a [callAiInsight](../resources/callaiinsight.md) object.|
|[Delete](../api/onlinemeeting-delete-aiinsights.md)|None|Delete a [callAiInsight](../resources/callaiinsight.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionItems|[actionItem](../resources/actionitem.md) collection|**TODO: Add Description**|
|callId|String|**TODO: Add Description**|
|contentCorrelationId|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|meetingNotes|[meetingNote](../resources/meetingnote.md) collection|**TODO: Add Description**|
|viewpoint|[callAiInsightViewPoint](../resources/callaiinsightviewpoint.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callAiInsight",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callAiInsight",
  "id": "String (identifier)",
  "callId": "String",
  "contentCorrelationId": "String",
  "createdDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "meetingNotes": [
    {
      "@odata.type": "microsoft.graph.meetingNote"
    }
  ],
  "actionItems": [
    {
      "@odata.type": "microsoft.graph.actionItem"
    }
  ],
  "viewpoint": {
    "@odata.type": "microsoft.graph.callAiInsightViewPoint"
  }
}
```

