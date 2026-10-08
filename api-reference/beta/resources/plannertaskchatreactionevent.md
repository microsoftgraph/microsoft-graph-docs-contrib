---
title: "plannerTaskChatReactionEvent resource type"
description: "Represents a user's reaction event on a planner task chat message."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 01/23/2026
---

# plannerTaskChatReactionEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's reaction event on a [plannerTaskChatMessage](plannertaskchatmessage.md). This resource captures the user who added the reaction and the timestamp when the reaction was added.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdDateTime|DateTimeOffset|The date and time when the reaction was added. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|user|[identitySet](identityset.md)|The identity of the user who added the reaction.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskChatReactionEvent"
}-->

```json
{
  "@odata.type": "#microsoft.graph.plannerTaskChatReactionEvent",
  "createdDateTime": "String (timestamp)",
  "user": {"@odata.type": "microsoft.graph.identitySet"}
}
```

<!-- {
  "type": "#page.annotation",
  "description": "plannerTaskChatReactionEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
