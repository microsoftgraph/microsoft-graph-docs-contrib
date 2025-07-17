---
title: "channelMembersNotificationRecipient resource type"
description: "Represents the recipient (channel members) of a notification sent in a Microsoft Teams activity feed."
author: "eddie-lee-msft"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# channelMembersNotificationRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
The following JSON representation shows the resource type.
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
