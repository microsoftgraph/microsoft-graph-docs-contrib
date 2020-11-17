---
title: "chat resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# chat resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List chats](../api/user-list-chats.md)|[chat](../resources/chat.md) collection|Get the chat resources from the chats navigation property.|
|[Create chats](../api/user-post-chats.md)|[chat](../resources/chat.md)|Create a new chat object.|
|[Update chats](../api/user-update-chats.md)|[chat](../resources/chat.md)|Update the properties of a chats object.|
|[Get chats](../api/user-get-chat.md)|[chat](../resources/chat.md)|Read the properties and relationships of a [chat](../resources/chat.md) object.|
|[Delete chats](../api/user-delete-chats.md)|None|Delete a [chat](../resources/chat.md) object.|
|[List chats](../api/chat-list.md)|[chat](../resources/chat.md) collection|Get a list of the [chat](../resources/chat.md) objects and their properties.|
|[Create chat](../api/chat-post-chats.md)|[chat](../resources/chat.md)|Create a new [chat](../resources/chat.md) object.|
|[Get chat](../api/chat-get.md)|[chat](../resources/chat.md)|Read the properties and relationships of a [chat](../resources/chat.md) object.|
|[Update chat](../api/chat-update.md)|[chat](../resources/chat.md)|Update the properties of a [chat](../resources/chat.md) object.|
|[Delete chat](../api/chat-delete.md)|None|Deletes a [chat](../resources/chat.md) object.|
|[sendActivityNotification](../api/chat-sendactivitynotification.md)|None|**TODO: Add Description**|
|[allMessages](../api/chat-allmessages.md)|[chatMessage](../resources/chatmessage.md) collection|**TODO: Add Description**|
|[List installedApps](../api/chat-list-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|Get the teamsAppInstallation resources from the installedApps navigation property.|
|[Create installedApps](../api/chat-post-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Create a new teamsAppInstallation object.|
|[Get installedApps](../api/chat-get-teamsappinstallation.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Read the properties and relationships of a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[Update installedApps](../api/chat-update-installedapps.md)|[teamsAppInstallation](../resources/teamsappinstallation.md)|Update the properties of an installedApps object.|
|[Delete installedApps](../api/chat-delete-installedapps.md)|None|Delete a [teamsAppInstallation](../resources/teamsappinstallation.md) object.|
|[List members](../api/chat-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the conversationMember resources from the members navigation property.|
|[Create members](../api/chat-post-members.md)|[conversationMember](../resources/conversationmember.md)|Create a new conversationMember object.|
|[Get members](../api/chat-get-conversationmember.md)|[conversationMember](../resources/conversationmember.md)|Read the properties and relationships of a [conversationMember](../resources/conversationmember.md) object.|
|[Update members](../api/chat-update-members.md)|[conversationMember](../resources/conversationmember.md)|Update the properties of a members object.|
|[Delete members](../api/chat-delete-members.md)|None|Delete a [conversationMember](../resources/conversationmember.md) object.|
|[List messages](../api/chat-list-messages.md)|[chatMessage](../resources/chatmessage.md) collection|Get the chatMessage resources from the messages navigation property.|
|[Create messages](../api/chat-post-messages.md)|[chatMessage](../resources/chatmessage.md)|Create a new chatMessage object.|
|[Get messages](../api/chat-get-chatmessage.md)|[chatMessage](../resources/chatmessage.md)|Read the properties and relationships of a [chatMessage](../resources/chatmessage.md) object.|
|[Update messages](../api/chat-update-messages.md)|[chatMessage](../resources/chatmessage.md)|Update the properties of a messages object.|
|[Delete messages](../api/chat-delete-messages.md)|None|Delete a [chatMessage](../resources/chatmessage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|topic|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|installedApps|[teamsAppInstallation](../resources/teamsappinstallation.md) collection|**TODO: Add Description**|
|members|[conversationMember](../resources/conversationmember.md) collection|**TODO: Add Description**|
|messages|[chatMessage](../resources/chatmessage.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chat",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chat",
  "id": "String (identifier)",
  "topic": "String",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```

