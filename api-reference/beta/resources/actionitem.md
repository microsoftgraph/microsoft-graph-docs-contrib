---
title: "actionItem resource type"
description: "Represents an action item associated with a set of meeting AI Insights."
author: "Anjali-Patle"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# actionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action item associated with a [call AI Insight](callaiinsight.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|ownerDisplayName|String|The display name of the owner of the action item.|
|text|String|The text content of the action item.|
|title|String|The title of the action item.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.actionItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.actionItem",
  "title": "String",
  "text": "String",
  "ownerDisplayName": "String"
}
```

