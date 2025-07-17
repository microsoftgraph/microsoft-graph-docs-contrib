---
title: "meetingNote resource type"
description: "Represents a meeting note associated with a callAiInsight."
author: "Anjali-Patle"
ms.date: 04/29/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# meetingNote resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a meeting note associated with a [call AI insight](callaiinsight.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|subpoints|[meetingNoteSubpoint](../resources/meetingnotesubpoint.md) collection| A collection of subpoints of the meeting note.|
|text|String|The text of the meeting note.|
|title|String|The title of the meeting note.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingNote"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.meetingNote",
  "subpoints": [{"@odata.type": "microsoft.graph.meetingNoteSubpoint"}],
  "text": "String",
  "title": "String"
}
```

