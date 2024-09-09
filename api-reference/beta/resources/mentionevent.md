---
title: "mentionEvent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# mentionEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|**TODO: Add Description**|
|speaker|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|transcriptUtterance|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mentionEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mentionEvent",
  "eventDateTime": "String (timestamp)",
  "speaker": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "transcriptUtterance": "String"
}
```

