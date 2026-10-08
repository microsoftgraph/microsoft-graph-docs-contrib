---
title: "agentTeamworkConfiguration resource type"
description: "Represents the per-conversation-context message notification settings that an agent uses across Teams conversation types."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentTeamworkConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the per-conversation-context message notification settings that an agent uses across Teams conversation types (group chat, channel, one-on-one chat, and meeting chat).

This complex type is configured in the **teamworkConfiguration** property of [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|channelConfiguration|[agentConversationConfiguration](../resources/agentconversationconfiguration.md)|The message notification settings that the agent uses in channels.|
|groupChatConfiguration|[agentConversationConfiguration](../resources/agentconversationconfiguration.md)|The message notification settings that the agent uses in group chats.|
|meetingChatConfiguration|[agentConversationConfiguration](../resources/agentconversationconfiguration.md)|The message notification settings that the agent uses in meeting chats.|
|oneOnOneChatConfiguration|[agentConversationConfiguration](../resources/agentconversationconfiguration.md)|The message notification settings that the agent uses in one-on-one chats.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentTeamworkConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentTeamworkConfiguration",
  "groupChatConfiguration": {"@odata.type": "microsoft.graph.agentConversationConfiguration"},
  "channelConfiguration": {"@odata.type": "microsoft.graph.agentConversationConfiguration"},
  "oneOnOneChatConfiguration": {"@odata.type": "microsoft.graph.agentConversationConfiguration"},
  "meetingChatConfiguration": {"@odata.type": "microsoft.graph.agentConversationConfiguration"}
}
```
