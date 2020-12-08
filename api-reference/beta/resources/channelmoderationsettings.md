---
title: "channelModerationSettings2 resource type"
description: "The channelModerationSettings resource is used to control who can start new posts and reply to posts in a channel."
author: bhartono
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelModerationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In Microsoft Teams, team owners can turn on moderation for a channel to control who can start new posts and reply to posts in that channel. Some examples scenarios for channel moderation are:
- Use a channel as an announcement channel.
- Use a channel for discussions in class team where only teacher can starts new discussions.
- Use a channel for livesite issues where new post can be started by connnector on getting new ICM.

By default, moderation is 'OFF' which means that the usual channel settings apply to team owners and team members with additional control to allow only team members or everyone including guests for starting new channel post. Setting channel moderation to 'ON' allow only moderators to start new posts with additonal control for team members.

To support channel moderation settings via Graph APIs:

- Team member should be able to query channel moderation setting.
- Team owner should be able to set channel moderation setting.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowNewMessageFromBots|Boolean|Indicates whether bots are allowed to post messages.|
|allowNewMessageFromConnectors|Boolean|Indicates whether connectors are allowed to post messages.|
|replyRestriction|[replyRestriction](../resources/enums.md#replyRestriction-values)|Indicates who all are allowed to reply to teams channel.|
|userNewMessageRestriction|[userNewMessageRestriction](../resources/enums.md#userNewMessageRestriction-values)|Indicates who all are allowed to post messages to teams channel.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelModerationSettings2"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.channelModerationSettings2",
  "userNewMessageRestriction": "String",
  "replyRestriction": "String",
  "allowNewMessageFromBots": "Boolean",
  "allowNewMessageFromConnectors": "Boolean"
}
```
