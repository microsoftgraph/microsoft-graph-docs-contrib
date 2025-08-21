---
title: "callAiInsight resource type"
description: "Represents a set of AI insights associated with an onlineMeeting."
author: "Anjali-Patle"
ms.date: 08/06/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
toc.title: "Call AI insight"
---

# callAiInsight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of AI insights associated with an [online meeting](onlinemeeting.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onlinemeeting-list-aiinsights.md)|[callAiInsight](../resources/callaiinsight.md) collection| Get the list of [callAiInsight](../resources/callaiinsight.md) objects associated with an [onlineMeeting](../resources/onlinemeeting.md)|
|[Get](../api/callaiinsight-get.md)|[callAiInsight](../resources/callaiinsight.md)| Get a [callAiInsight](../resources/callaiinsight.md) object associated with an [onlineMeeting](../resources/onlinemeeting.md).|

## Properties

|Property|Type|Description|

|:---|:---|:---|
|actionItems|[actionItem](../resources/actionitem.md) collection|The collection of AI-generated action items. Read-only.|
|callId|String|The ID for the online meeting call for which the **callAiInsight** was generated. Read-only.|
|contentCorrelationId|String|The unique ID that correlates the transcript from which the insights were generated. Read-only.|
|createdDateTime|DateTimeOffset|Date and time at which the corresponding transcript was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|endDateTime|DateTimeOffset|Date and time at which the corresponding transcription ends. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|id|String|The unique identifier for the **callAiInsight** entity. Read-only. Inherited from [entity](../resources/entity.md).|
|meetingNotes|[meetingNote](../resources/meetingnote.md) collection|The collection of AI-generated meeting notes. Read-only.|
|viewpoint|[callAiInsightViewPoint](../resources/callaiinsightviewpoint.md)|The caller-specific properties of the **callAiInsight** entity. Read-only.|

## Relationships
None

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
  "actionItems": [{"@odata.type": "microsoft.graph.actionItem"}],
  "callId": "String",
  "contentCorrelationId": "String",
  "createdDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "meetingNotes": [{"@odata.type": "microsoft.graph.meetingNote"}],
  "viewpoint": {"@odata.type": "microsoft.graph.callAiInsightViewPoint"}
}
```