---
title: "conversationMember resource type"
description: "Represents user in a conversation."
ms.localizationpriority: medium
author: "akjo"
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# conversationMember resource type

Namespace: microsoft.graph

Represents a user in a [team](team.md), a [channel](channel.md), or a [chat](chat.md).

Base type for the following supported conversation member types:
- [aadUserConversationMember](aaduserconversationmember.md)
- [anonymousGuestConversationMember](anonymousguestconversationmember.md)
- [azureCommunicationServicesUserConversationMember](azurecommunicationservicesuserconversationmember.md)
- [microsoftAccountUserConversationMember](microsoftaccountuserconversationmember.md)
- [skypeForBusinessUserConversationMember](skypeforbusinessuserconversationmember.md)
- [skypeUserConversationMember](skypeuserconversationmember.md)

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List team members](../api/team-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the list of members in the team.|
|[Add team member](../api/team-post-members.md)|[conversationMember](../resources/conversationmember.md)|Add a new member to the team.|
|[Get team member](../api/team-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in the team.|
|[Update team member's role](../api/team-update-members.md)|[conversationMember](../resources/conversationmember.md)|Change a member to an owner or back to a regular member.|
|[Remove team member](../api/team-delete-members.md)|None|Remove an existing member from the team.|
|[List channel members](../api/channel-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all members in a channel.|
|[Add channel member](../api/channel-post-members.md) | [conversationMember](conversationmember.md) | Add a member to a channel. Only supported for `channel` with membershipType of `private`.|
|[Get channel member](../api/channel-get-members.md) | [conversationMember](conversationmember.md) collection | Get a member in a channel.|
|[Update channel member's role](../api/channel-update-members.md) | [conversationMember](conversationmember.md) | Update the properties of a member of the channel. Only supported for channel with membershipType of `private`.|
|[Remove channel member](../api/channel-delete-members.md) | None | Delete a member from a channel. Only supported for `channelType` of `private`.|
|[List chat members](../api/chat-list-members.md) | [conversationMember](conversationmember.md) collection | Get the list of all members in a chat.|
|[Add chat member](../api/chat-post-members.md) | Location header | Add a member to a chat.| 
|[Get chat member](../api/chat-get-members.md) | [conversationMember](conversationmember.md) | Get a member in a chat.|
|[Remove chat member](../api/chat-delete-members.md) | None | Remove a member from a chat.| 

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|displayName| string | The display name of the user. |
|id|String| Read-only. Unique ID of the user.|
|roles| string collection | The roles for that user. This property only contains additional qualifiers when relevant - for example, if the member has `owner` privileges, the **roles** property contains `owner` as one of the values. Similarly, if the member is a guest, the **roles** property contains `guest` as one of the values. A basic member should not have any values specified in the **roles** property.  |
|visibleHistoryStartDateTime| DateTimeOffset | The timestamp denoting how far back a conversation's history is shared with the conversation member. This property is settable only for members of a chat. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conversationMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conversationMember",
  "displayName": "String",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "visibleHistoryStartDateTime": "String (timestamp)"
}
```

## See also
- [aadUserConversationMember](aaduserconversationmember.md)
- [skypeForBusinessUserConversationMember](skypeForBusinessUserConversationMember.md)
- [anonymousGuestConversationMember](anonymousGuestConversationMember.md)
- [skypeUserConversationMember](skypeUserConversationMember.md)
- [microsoftAccountUserConversationMember](microsoftAccountUserConversationMember.md)
- [azureCommunicationServicesUserConversationMember](azureCommunicationServicesUserConversationMember.md)

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

