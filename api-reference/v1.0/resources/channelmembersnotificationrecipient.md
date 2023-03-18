---
title: "channelMembersNotificationRecipient resource type"
description: "Represents the recipient (channel members) of a notification sent in a Microsoft Teams activity feed."
author: "eddie-lee-msft"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# channelMembersNotificationRecipient resource type

Namespace: microsoft.graph

Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the channel members.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
| Property  | Type   | Description                                                                          |
|:----------|:-------|:-------------------------------------------------------------------------------------|
| channelId | String | The unique identifier for the channel whose members should receive the notification. |
| teamId    | String | The unique identifier for the team under which the channel resides.                  |

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
  "channelId": "String",
  "teamId": "String"
}
```
