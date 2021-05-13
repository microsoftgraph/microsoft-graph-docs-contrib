---
title: "channelMembersNotificationRecipient resource type"
description:  Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a channel.
author: eddie-lee-msft
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# channelMembersNotificationRecipient resource type

Namespace: microsoft.graph

Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a channel.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
| Property  | Type   | Description                                              |
| :-------- | :----- | :------------------------------------------------------- |
| teamId    | String | Identifier for the team under which the channel resides. |
| channelId | String | Identifier for the channel.                              |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.channelMembersNotificationRecipient"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.channelMembersNotificationRecipient",
  "teamId": "String",
  "channelId": "String"
}
```