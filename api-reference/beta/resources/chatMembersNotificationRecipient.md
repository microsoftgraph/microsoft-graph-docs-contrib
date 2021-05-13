---
title: "chatMembersNotificationRecipient resource type"
description:  Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a chat.
author: eddie-lee-msft
localization_priority: Normal
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# chatMembersNotificationRecipient resource type

Namespace: microsoft.graph

Represents a recipient of a notification sent in a Microsoft Teams activity feed, where the recipient is made up of the members of a chat.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|chatId|String|Identifier for the chat.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

