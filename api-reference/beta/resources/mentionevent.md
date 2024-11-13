---
title: "mentionEvent resource type"
description: "Represents a mention event associated with a callAiInsightViewPoint."
author: "Anjali-Patle"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# mentionEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a mention event associated with a [callAiInsightViewPoint](callaiinsightviewpoint.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|The date and time of the mention event.|
|speaker|[identitySet](identityset.md)|The speaker who mentioned the user.|
|transcriptUtterance|String|The utterance in the online meeting transcript that contains the mention event.|

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

