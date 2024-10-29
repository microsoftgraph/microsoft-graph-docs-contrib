---
title: "meetingNoteSubpoint resource type"
description: "Represents a meeting note subpoint associated with a meeting note."
author: "Anjali-Patle"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# meetingNoteSubpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a meeting note subpoint associated with a [meeting note](meetingnote.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|text|String|The text of the meeting note subpoint.|
|title|String|The title of the meeting note subpoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.meetingNoteSubpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.meetingNoteSubpoint",
  "title": "String",
  "text": "String"
}
```

