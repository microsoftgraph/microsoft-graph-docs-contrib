---
title: "agentConversationConfiguration resource type"
description: "Represents the message notification settings for an agent within a specific Teams conversation context."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentConversationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the message notification settings for an agent within a specific Teams conversation context.

This complex type is used by the **channelConfiguration**, **groupChatConfiguration**, **meetingChatConfiguration**, and **oneOnOneChatConfiguration** properties of [agentTeamworkConfiguration](../resources/agentteamworkconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|messageNotificationMode|[agentMessageNotificationMode](enums.md#agentmessagenotificationmode-values)|Controls which messages in the conversation context the agent is notified about. The possible values are: `atMentionedMessagesOnly`, `allMessages`, `unknownFutureValue`. Not nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentConversationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentConversationConfiguration",
  "messageNotificationMode": "String"
}
```
