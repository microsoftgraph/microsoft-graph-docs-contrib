---
title: "engagementConversationMessageReaction resource type"
description: "Represents a reaction (for example, like, love, or celebrate) to a message in a Viva Engage conversation."
author: "PV-work-25"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# engagementConversationMessageReaction resource type

Namespace: microsoft.graph


Represents a reaction (for example, like, love, or celebrate) to a message in a Viva Engage conversation.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Date and time when the reaction was added. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|Unique identifier of a reaction posted to a Viva Engage conversation message. Inherited from [entity](../resources/entity.md).|
|reactionBy|[engagementIdentitySet](../resources/engagementidentityset.md)|Identity of the user who added the reaction.|
|reactionType|engagementConversationMessageReactionType|The type of the reaction. The possible values are: `like`, `love`, `celebrate`, `thank`, `laugh`, `sad`, `happy`, `excited`, `smile`, `silly`, `intenseLaugh`, `starStruck`, `goofy`, `thinking`, `surprised`, `mindBlown`, `scared`, `crying`, `shocked`, `angry`, `agree`, `praise`, `takingNotes`, `heartBroken`, `support`, `confirmed`, `watching`, `brain`, `medal`, `bullseye`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementConversationMessageReaction",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementConversationMessageReaction",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "reactionBy": {"@odata.type": "microsoft.graph.engagementIdentitySet"},
  "reactionType": "String"
}
```

