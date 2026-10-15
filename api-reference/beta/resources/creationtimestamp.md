---
title: "creationTimestamp resource type"
description: "Identifies who performed an action and when, reused across Planner V4 types that need a lightweight actor-plus-timestamp pair (for example, a chatReaction author)."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# creationTimestamp resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **users** property of the [chatReaction](chatreaction.md) resource uses this type.

Identifies who performed an action and when, reused across Planner V4 types that need a lightweight actor-plus-timestamp pair (for example, a [chatReaction](chatreaction.md) author).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) associated with the action.|
|createdDateTime|DateTimeOffset|Date and time the action occurred.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.creationTimestamp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.creationTimestamp",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

