---
title: "phoneUserConversationMember resource type"
description: "Represents a phone user in a chat."
author: "RamjotSingh"
ms.date: 06/10/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# phoneUserConversationMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a phone user in a chat.

Inherits from [conversationMember](../resources/conversationmember.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name. Always set to `null`. Inherited from [conversationMember](../resources/conversationmember.md).|
|id|String|The membership ID that represents this resource. Inherited from [conversationMember](../resources/conversationmember.md).|
|phoneNumber|String|The phone number of the conversation member.|
|roles|String collection|Special roles assigned to this conversation member. Inherited from [conversationMember](../resources/conversationmember.md).|
|visibleHistoryStartDateTime|DateTimeOffset|The timestamp that indicates how far back the conversation history is shared with the conversation member. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [conversationMember](../resources/conversationmember.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.phoneUserConversationMember",
  "baseType": "microsoft.graph.conversationMember",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.phoneUserConversationMember",
  "displayName": "String",
  "id": "String (identifier)",
  "phoneNumber": "String",
  "roles": ["String"],
  "visibleHistoryStartDateTime": "String (timestamp)"
}
```
