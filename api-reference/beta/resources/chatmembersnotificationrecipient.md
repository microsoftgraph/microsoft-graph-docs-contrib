---
title: "chatMembersNotificationRecipient resource type"
description: "Represents the recipient (chat members) of a notification sent in a Microsoft Teams activity feed."
author: "eddie-lee-msft"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# chatMembersNotificationRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the recipient of a notification sent in a Microsoft Teams activity feed. The recipient consists of the chat members.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
| Property | Type   | Description                                                                        |
|:---------|:-------|:-----------------------------------------------------------------------------------|
| chatId   | String | The unique identifier for the chat whose members should receive the notifications. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatMembersNotificationRecipient"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.chatMembersNotificationRecipient",
  "chatId": "String"
}
```
