---
title: "plannerChatMessage resource type"
description: "A chat message associated with a task or a plan, surfaced on the task through the `messages` navigation property."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerChatMessage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A chat message associated with a [task](task.md) or a [plan](plan.md), surfaced on the task through the `messages` navigation property.


Inherits from [plannerDelta](../resources/plannerdelta.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/task-list-messages.md)|[plannerChatMessage](../resources/plannerchatmessage.md) collection|Get a list of the plannerChatMessage objects and their properties.|
|[Create](../api/task-post-messages.md)|[plannerChatMessage](../resources/plannerchatmessage.md)|Create a new plannerChatMessage object.|
|[Get](../api/plannerchatmessage-get.md)|[plannerChatMessage](../resources/plannerchatmessage.md)|Read the properties and relationships of [plannerChatMessage](../resources/plannerchatmessage.md) object.|
|[Update](../api/plannerchatmessage-update.md)|[plannerChatMessage](../resources/plannerchatmessage.md)|Update the properties of a plannerChatMessage object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Body content of the chat message.|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who created the entity. Read-only.|
|createdDateTime|DateTimeOffset|Date and time the entity was created. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|deletedTime|DateTimeOffset|Date and time the message was deleted.|
|editedTime|DateTimeOffset|Date and time the message was last edited.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|isDeleted|Boolean|Indicates whether the message was deleted.|
|isEdited|Boolean|Indicates whether the message was edited after it was sent.|
|messageType|plannerChatMessageType|Format of the message content. The possible values are: `richTextHtml`, `plainText`, `unknownFutureValue`.|
|parentEntityId|String|ID of the task or plan the message belongs to.|
|properties|[chatMessageProperties](../resources/chatmessageproperties.md)|@mentions and reactions associated with the message.|
|threadType|plannerChatThreadType|Indicates whether the message belongs to a task-level or plan-level conversation. The possible values are: `task`, `plan`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerChatMessage",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerChatMessage",
  "id": "String (identifier)",
  "messageType": "String",
  "content": "String",
  "properties": {
    "@odata.type": "microsoft.graph.chatMessageProperties"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "threadType": "String",
  "parentEntityId": "String",
  "isDeleted": "Boolean",
  "deletedTime": "String (timestamp)",
  "isEdited": "Boolean",
  "editedTime": "String (timestamp)"
}
```

