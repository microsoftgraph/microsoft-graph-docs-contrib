---
title: "meetingNote resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# meetingNote resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|subpoints|[meetingNoteSubpoint](../resources/meetingnotesubpoint.md) collection|**TODO: Add Description**|
|text|String|**TODO: Add Description**|
|title|String|**TODO: Add Description**|

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
  "title": "String",
  "text": "String",
  "subpoints": [
    {
      "@odata.type": "microsoft.graph.meetingNoteSubpoint"
    }
  ]
}
```

